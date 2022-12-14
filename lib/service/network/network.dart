abstract class NetworkContract {
  Future get(String url);
  Future post(String url, {dynamic data});
  Future put(String url, {dynamic data});
  Future delete(String url, {dynamic data});
}
