var Blog;
(function (Blog) {
    var Post = /** @class */ (function () {
        function Post(post) {
            this.title = post.title;
            this.body = post.body;
        }
        Post.prototype.printPost = function () {
            console.log(this.title);
            console.log(this.body);
        };
        return Post;
    }());
    Blog.Post = Post;
})(Blog || (Blog = {}));
var Content;
(function (Content) {
    var Post = /** @class */ (function () {
        function Post(post) {
            this.title = post.title;
            this.body = post.body;
            this.slug = post.slug;
            this.seoKeywords = post.seoKeywords;
        }
        Post.prototype.printPost = function () {
            console.log(this.title);
            console.log(this.body);
            console.log(this.slug);
            console.log(this.seoKeywords);
        };
        return Post;
    }());
    Content.Post = Post;
})(Content || (Content = {}));
var blogpost = new Blog.Post({
    title: "My great post title",
    body: "Some Post"
});
var contentpost = new Content.Post({
    title: "My great content title",
    body: "Some Content",
    slug: "my-great-post",
    seoKeywords: "any, words"
});
blogpost.printPost();
contentpost.printPost();
//# sourceMappingURL=namespaces.js.map