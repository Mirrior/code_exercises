const blog = {
  title: "My great post",
  summary: "summary of the post"
}

const openGraphMetadata = ({ title, summary = "A DailySmarty Post"}) => {
  console.log(`
    og-tilet=${title}
    og-description=${summary}
    `);
}

openGraphMetadata(blog);