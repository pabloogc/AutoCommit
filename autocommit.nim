import httpclient, htmlparser, streams, xmltree, os, strutils

let client = newHttpClient()
let htmlString = newStringStream(client.getContent("http://whatthecommit.com/"))
let html = parseHtml(htmlString)

var commitMessage : string = "whatthecommit is down!"
for elem in html.findAll("p"):
  #first <p> contains the whatthecommit message
  commitMessage = elem[0].text().replace("\n", "")
  break

discard os.execShellCmd("git add -A")
discard os.execShellCmd("git commit -m \"" & commitMessage & "\"")
