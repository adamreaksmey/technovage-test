const replaceUrl = (url) => {
  const regex = /\/purchases\?page=1/
  const match = url.match(regex)
  return match ? match[0] : null
}

export default replaceUrl
