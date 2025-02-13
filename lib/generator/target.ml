open Yocaml

let capsule ~target = target
let md_to_html file = basename $ replace_extension file "html"
let css ~target = "css" |> into (capsule ~target)
let javascript ~target = "js" |> into (capsule ~target)
let fonts ~target = "fonts" |> into (capsule ~target)
let images ~target = "images" |> into (capsule ~target)
let pages ~target = "pages" |> into (capsule ~target)
let addresses ~target = "addresses" |> into (capsule ~target)
let dapps ~target = "dapps" |> into (capsule ~target)
let entries ~target = "journal" |> into (capsule ~target)
let indexes ~target = capsule ~target
let for_page ~target file = md_to_html file |> into (pages ~target)
let for_index ~target file = md_to_html file |> into (indexes ~target)
let for_address ~target file = md_to_html file |> into (addresses ~target)
let for_entry ~target file = md_to_html file |> into (entries ~target)

let for_entries ~target index =
  let name =
    if index = 1 then "index.html" else string_of_int index ^ ".html"
  in
  name |> into (entries ~target)

let for_dapp ~target directory =
  "index.html" |> into directory |> into (dapps ~target)
