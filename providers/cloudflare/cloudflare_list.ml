(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type item__value__hostname = { url_hostname : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : item__value__hostname) -> ()

let yojson_of_item__value__hostname =
  (function
   | { url_hostname = v_url_hostname } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url_hostname in
         ("url_hostname", arg) :: bnds
       in
       `Assoc bnds
    : item__value__hostname -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_item__value__hostname

[@@@deriving.end]

type item__value__redirect = {
  include_subdomains : string prop option; [@option]
  preserve_path_suffix : string prop option; [@option]
  preserve_query_string : string prop option; [@option]
  source_url : string prop;
  status_code : float prop option; [@option]
  subpath_matching : string prop option; [@option]
  target_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : item__value__redirect) -> ()

let yojson_of_item__value__redirect =
  (function
   | {
       include_subdomains = v_include_subdomains;
       preserve_path_suffix = v_preserve_path_suffix;
       preserve_query_string = v_preserve_query_string;
       source_url = v_source_url;
       status_code = v_status_code;
       subpath_matching = v_subpath_matching;
       target_url = v_target_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_url in
         ("target_url", arg) :: bnds
       in
       let bnds =
         match v_subpath_matching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subpath_matching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "status_code", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_url in
         ("source_url", arg) :: bnds
       in
       let bnds =
         match v_preserve_query_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preserve_query_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve_path_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preserve_path_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_subdomains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "include_subdomains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : item__value__redirect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_item__value__redirect

[@@@deriving.end]

type item__value = {
  asn : float prop option; [@option]
  ip : string prop option; [@option]
  hostname : item__value__hostname list;
  redirect : item__value__redirect list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : item__value) -> ()

let yojson_of_item__value =
  (function
   | {
       asn = v_asn;
       ip = v_ip;
       hostname = v_hostname;
       redirect = v_redirect;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_item__value__redirect v_redirect
         in
         ("redirect", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_item__value__hostname v_hostname
         in
         ("hostname", arg) :: bnds
       in
       let bnds =
         match v_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "asn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : item__value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_item__value

[@@@deriving.end]

type item = {
  comment : string prop option; [@option]
  value : item__value list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : item) -> ()

let yojson_of_item =
  (function
   | { comment = v_comment; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_item__value v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : item -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_item

[@@@deriving.end]

type cloudflare_list = {
  account_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  kind : string prop;
  name : string prop;
  item : item list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_list) -> ()

let yojson_of_cloudflare_list =
  (function
   | {
       account_id = v_account_id;
       description = v_description;
       id = v_id;
       kind = v_kind;
       name = v_name;
       item = v_item;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_item v_item in
         ("item", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_list

[@@@deriving.end]

let item__value__hostname ~url_hostname () : item__value__hostname =
  { url_hostname }

let item__value__redirect ?include_subdomains ?preserve_path_suffix
    ?preserve_query_string ?status_code ?subpath_matching ~source_url
    ~target_url () : item__value__redirect =
  {
    include_subdomains;
    preserve_path_suffix;
    preserve_query_string;
    source_url;
    status_code;
    subpath_matching;
    target_url;
  }

let item__value ?asn ?ip ?(hostname = []) ?(redirect = []) () :
    item__value =
  { asn; ip; hostname; redirect }

let item ?comment ~value () : item = { comment; value }

let cloudflare_list ?description ?id ~account_id ~kind ~name ~item ()
    : cloudflare_list =
  { account_id; description; id; kind; name; item }

type t = {
  account_id : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
}

let make ?description ?id ~account_id ~kind ~name ~item __id =
  let __type = "cloudflare_list" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_list
        (cloudflare_list ?description ?id ~account_id ~kind ~name
           ~item ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~account_id ~kind ~name
    ~item __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~account_id ~kind ~name ~item __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
