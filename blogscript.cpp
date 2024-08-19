#include <drogon/drogon.h>
#include <nlohmann/json.hpp>
#include <libtorrent/session.hpp>
#include <libtorrent/magnet_uri.hpp>
#include <libtorrent/torrent_status.hpp>
#include <drogon/WebSocketClient.h>
#include <drogon/HttpAppFramework.h>
#include <string>
#include <iostream>
#include <vector>
#include <algorithm>
#include <fstream>
#include <unistd.h>
#include <thread>
#include <chrono>


#include <boost/beast/core.hpp>
#include <boost/beast/websocket.hpp>
#include <boost/asio/connect.hpp>
#include <boost/asio/ip/tcp.hpp>

using json = nlohmann::json;
using namespace drogon;

namespace beast = boost::beast;         // from <boost/beast.hpp>
namespace http = beast::http;           // from <boost/beast/http.hpp>
namespace websocket = beast::websocket; // from <boost/beast/websocket.hpp>
namespace net = boost::asio;            // from <boost/asio.hpp>
using tcp = boost::asio::ip::tcp;       // from <boost/asio/ip/tcp.hpp>



void printIfDebuggerPresent(const std::string& output) {


}

using json = nlohmann::json;
using namespace drogon;
namespace lt = libtorrent;


void download_torrent(const std::string& infohash) {

    lt::settings_pack settings;
    lt::session session(settings);
    printIfDebuggerPresent("12");

    lt::add_torrent_params torrent_params;
    torrent_params.save_path = "./"; // Save path for downloaded files
    printIfDebuggerPresent("13");

    std::string res_url;

    printIfDebuggerPresent("infohash in download function");
    printIfDebuggerPresent(infohash);

    torrent_params.url = "magnet:?xt=urn:btih:" + infohash;

    std::string rurl = "magnet:?xt=urn:btih:" + infohash;
    printIfDebuggerPresent(rurl);

    printIfDebuggerPresent("14");

    // Add the torrent to the session
    lt::torrent_handle handle = session.add_torrent(std::move(torrent_params));
    printIfDebuggerPresent("15");

    // Downloading is asynchronous, so we need to wait and check the progress.
    for (;;) {
        std::this_thread::sleep_for(std::chrono::seconds(1));
	printIfDebuggerPresent("16");

        // Get torrent status
        lt::torrent_status status = handle.status();

        // Check if download is complete
        if (status.is_finished) {
	    std::cout << "Download complete" << std::endl;
            break;
        }

        // Print progress
        std::cout << "Downloading: " << status.progress_ppm / 10000 << "%" << std::endl;
	printIfDebuggerPresent("17");
    }

    // Save the torrent file
    std::ofstream out(infohash + ".torrent", std::ios_base::binary);
    handle.save_resume_data(lt::torrent_handle::save_info_dict);

    auto const resume_data = handle.write_resume_data();

    const std::type_info& ti = typeid(resume_data);

    printIfDebuggerPresent(ti.name());
}

std::string readFileContents(const std::string& filePath) {
    std::ifstream fileStream(filePath);
    if (!fileStream) {
        std::cerr << "Cannot open file at " << filePath << std::endl;
        return "";
    }
    std::stringstream buffer;
    buffer << fileStream.rdbuf(); // Read the file
    return buffer.str();
}


std::string embedCSSRaw(const std::string& htmlContent, const std::string& cssContent) {

    size_t headClosePos = htmlContent.find("</head>");
    if (headClosePos != std::string::npos) {
        std::stringstream ss;
        ss << htmlContent.substr(0, headClosePos);
        ss << "<style>" << cssContent << "</style>";
        ss << htmlContent.substr(headClosePos);
        return ss.str();
    } else {
        return htmlContent;
    }
}


std::string embedCSS(const std::string& htmlContent, const std::string& cssPath) {

    std::string cssContent = readFileContents(cssPath);

    size_t headClosePos = htmlContent.find("</head>");
    if (headClosePos != std::string::npos) {
        std::stringstream ss;
        ss << htmlContent.substr(0, headClosePos);
        ss << "<style>" << cssContent << "</style>";
        ss << htmlContent.substr(headClosePos);
        return ss.str();
    } else {
        return htmlContent;
    }
}

std::string embedJS(const std::string& htmlContent, const std::string& jsFilePath) {

    std::string jsContent = readFileContents(jsFilePath);

    size_t bodyClosePos = htmlContent.find("</body>");
    if (bodyClosePos != std::string::npos) {
        std::string modifiedHtmlContent = htmlContent;
        modifiedHtmlContent.insert(bodyClosePos, "<script type='module'>\n" + jsContent + "\n</script>\n");
        return modifiedHtmlContent;
    } else {
        return htmlContent + "\n<script type='module'>\n" + jsContent + "\n</script>\n";
    }
}

std::string embedJS_noModule(const std::string& htmlContent, const std::string& jsFilePath) {

    std::string jsContent = readFileContents(jsFilePath);

    size_t bodyClosePos = htmlContent.find("</body>");
    if (bodyClosePos != std::string::npos) {
        std::string modifiedHtmlContent = htmlContent;
        modifiedHtmlContent.insert(bodyClosePos, "<script>\n" + jsContent + "\n</script>\n");
        return modifiedHtmlContent;
    } else {
        return htmlContent + "\n<script>\n" + jsContent + "\n</script>\n";
    }
}

std::string embedJSRaw(const std::string& htmlContent, const std::string& jsContent) {

    size_t bodyClosePos = htmlContent.find("</body>");
    if (bodyClosePos != std::string::npos) {
        // If </body> tag is found, insert the script tag before it
        std::string modifiedHtmlContent = htmlContent;
        modifiedHtmlContent.insert(bodyClosePos, "<script>\n" + jsContent + "\n</script>\n");
        return modifiedHtmlContent;
    } else {
        return htmlContent + "\n<script type='module' src=" + jsContent + ">\n</script>\n";
    }
}

void sendDynamicContent(const HttpRequestPtr& req, std::function<void(const HttpResponsePtr&)>&& callback) {
    auto resp = HttpResponse::newHttpResponse();
    resp->setStatusCode(k200OK);
    resp->setContentTypeCode(CT_TEXT_HTML);

    //const std::string htmlFilePath = "/mnt/local/web/videosearch/blog_index.min.html";
    //
    //
    const std::string htmlFilePath = "/mnt/local/web/videosearch/blog_index.html";

    //const std::string cssFilePath = "/mnt/local/web/videosearch/blog_styles.min.css";
    //
    const std::string cssFilePath = "/mnt/local/web/videosearch/blog_styles.css";

    const std::string jsFilePath = "/mnt/local/web/videosearch/blogscript.js";
    const std::string masonryFilePath = "/mnt/local/web/videosearch/masonry.pkgd.min.js";

    //const std::string imagesLoadedPath = "https://unpkg.com/imagesloaded@5/imagesloaded.pkgd.min.js";

    //const std::string isotopeFilePath = "/mnt/local/web/videosearch/isotope.pkgd.min.js";
    //const std::string isotopeFilePath = "/mnt/local/web/videosearch/isotope.pkgd.js";

    const std::string d3Path = "/mnt/local/web/videosearch/d3.v7.min.js";

    const std::string calHeatmapJsPath = "/mnt/local/web/videosearch/cal-heatmap.min.js";
    const std::string calHeatmapCssPath = "/mnt/local/web/videosearch/cal-heatmap.css";

    //const std::string mapboxCssPath = "/mnt/local/web/videosearch/mapbox-gl.css";
    //const std::string mapboxJsPath = "/mnt/local/web/videosearch/mapbox-gl.js";


    //const std::string arcgisJsPath = "/mnt/local/web/videosearch/init.js";
    //const std::string arcgisCssPath = "https://js.arcgis.com/4.29/esri/themes/light/main.css";

    //const std::string deckGlJsPath = "/mnt/local/web/videosearch/deck-gl-8.1.js";
    ///? const std::string deckGlCorePath = "/mnt/local/web/videosearch/deck-gl-core-9.0.js";
    ///? const std::string deckGlLayersPath = "/mnt/local/web/videosearch/deck-gl-layers-9.0.js";
    ///? const std::string deckGlGeoLayersPath = "/mnt/local/web/videosearch/deck-gl-geo-layers-9.0.js";
    ///? const std::string deckGlArcGisPath = "/mnt/local/web/videosearch/deck-gl-arcgis.dist.js";



    //const std::string deckGlPath = "/mnt/local/web/videosearch/deckgl/deckgl.dist.min.js";
    //const std::string deckGlGeoLayersPath = "/mnt/local/web/videosearch/deckgl/geo-layers.dist.min.js";
    //const std::string deckGlArcGisPath = "/mnt/local/web/videosearch/deckgl/arcgis.dist.min.js";

    const std::string nodejs_arcgis = "/mnt/local/web/videosearch/nodejs_scripts/bundle.js";

    //const std::string nodejs_arcgis = "/mnt/local/web/videosearch/bundle.js";

    //const std::string simplebarJs = "https://unpkg.com/simplebar@latest/dist/simplebar.min.js";
    //const std::string simplebarCss = "https://unpkg.com/simplebar@latest/dist/simplebar.css";

    //const std::string simplebarJs = "/mnt/local/web/videosearch/simplebar.min.js";
    //const std::string simplebarCss = "/mnt/local/web/videosearch/simplebar.css";

    const std::string calciteJs = "calcite.esm.js";
    const std::string calciteCss = "calcite.css";


    //const std::string sentry_link = "https://js-de.sentry-cdn.com/11ee58a5e3e6bda7e65775f677dc58f2.min.js";

    std::string htmlContent = readFileContents(htmlFilePath);

    //htmlContent = embedJSRaw(htmlContent, sentry_link);

    htmlContent = embedJS(htmlContent, d3Path);
    htmlContent = embedJS(htmlContent, calHeatmapJsPath);
    htmlContent = embedCSS(htmlContent, calHeatmapCssPath);

    htmlContent = embedJS(htmlContent, calciteJs);
    htmlContent = embedCSS(htmlContent, calciteCss);

    //htmlContent = embedJS(htmlContent, deckGlPath );

    ///? htmlContent = embedCSS(htmlContent,deckGlCorePath );
    ///? htmlContent = embedCSS(htmlContent,deckGlLayersPath );
    ///? htmlContent = embedJS(htmlContent, deckGlGeoLayersPath );
    ///? htmlContent = embedCSS(htmlContent,deckGlArcGisPath );


    htmlContent = embedJS(htmlContent, masonryFilePath);
    //htmlContent = embedJS(htmlContent, simplebarJs);
    //htmlContent = embedCSS(htmlContent, simplebarCss);

    //htmlContent = embedJS(htmlContent, nodejs_arcgis);
    htmlContent = embedCSS(htmlContent, cssFilePath);
    htmlContent = embedJS(htmlContent, jsFilePath);

    //htmlContent = embedJS_noModule(htmlContent, nodejs_arcgis);
    htmlContent = embedJS(htmlContent, nodejs_arcgis);

    //htmlContent = embedJSRaw(htmlContent, simplebarJs);
    //htmlContent = embedCSSRaw(htmlContent, simplebarCss);



    resp->setBody(htmlContent);
    callback(resp);
}


void
do_session(tcp::socket socket)
{
    try
    {
        websocket::stream<tcp::socket> ws{std::move(socket)};

        ws.set_option(websocket::stream_base::decorator(
            [](websocket::response_type& res)
            {
                res.set(http::field::server,
                    std::string(BOOST_BEAST_VERSION_STRING) +
                        " websocket-server-sync");
            }));

        ws.accept();

        for(;;)
        {
            // This buffer will hold the incoming message
            beast::flat_buffer buffer;

            // Read a message
            ws.read(buffer);

            // Echo the message back
            ws.text(ws.got_text());
            ws.write(buffer.data());
        }
    }
    catch(beast::system_error const& se)
    {
        if(se.code() != websocket::error::closed)
            std::cerr << "Error: " << se.code().message() << std::endl;
    }
    catch(std::exception const& e)
    {
        std::cerr << "Error: " << e.what() << std::endl;
    }
}


int main() {

   app().addListener("127.0.0.1", 5005);

    //std::string js_code_str(js_code);
    //InitializeV8AndRunJS(js_code_str);

   app().registerHandler("/", &sendDynamicContent, {drogon::Get});


   app().run();


    return 0;
}
