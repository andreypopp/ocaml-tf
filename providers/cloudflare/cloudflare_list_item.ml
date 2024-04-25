(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hostname = { url_hostname : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname) -> ()

let yojson_of_hostname =
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
    : hostname -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname

[@@@deriving.end]

type redirect = {
  include_subdomains : bool prop option; [@option]
  preserve_path_suffix : bool prop option; [@option]
  preserve_query_string : bool prop option; [@option]
  source_url : string prop;
  status_code : float prop option; [@option]
  subpath_matching : bool prop option; [@option]
  target_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redirect) -> ()

let yojson_of_redirect =
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
             let arg = yojson_of_prop yojson_of_bool v in
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
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_query_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preserve_path_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_path_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_subdomains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_subdomains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : redirect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redirect

[@@@deriving.end]

type cloudflare_list_item = {
  account_id : string prop;
  asn : float prop option; [@option]
  comment : string prop option; [@option]
  ip : string prop option; [@option]
  list_id : string prop;
  hostname : hostname list;
  redirect : redirect list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_list_item) -> ()

let yojson_of_cloudflare_list_item =
  (function
   | {
       account_id = v_account_id;
       asn = v_asn;
       comment = v_comment;
       ip = v_ip;
       list_id = v_list_id;
       hostname = v_hostname;
       redirect = v_redirect;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_redirect v_redirect in
         ("redirect", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_hostname v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_list_id in
         ("list_id", arg) :: bnds
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
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_list_item -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_list_item

[@@@deriving.end]

let hostname ~url_hostname () : hostname = { url_hostname }

let redirect ?include_subdomains ?preserve_path_suffix
    ?preserve_query_string ?status_code ?subpath_matching ~source_url
    ~target_url () : redirect =
  {
    include_subdomains;
    preserve_path_suffix;
    preserve_query_string;
    source_url;
    status_code;
    subpath_matching;
    target_url;
  }

let cloudflare_list_item ?asn ?comment ?ip ?(hostname = [])
    ?(redirect = []) ~account_id ~list_id () : cloudflare_list_item =
  { account_id; asn; comment; ip; list_id; hostname; redirect }

type t = {
  account_id : string prop;
  asn : float prop;
  comment : string prop;
  id : string prop;
  ip : string prop;
  list_id : string prop;
}

let make ?asn ?comment ?ip ?(hostname = []) ?(redirect = [])
    ~account_id ~list_id __id =
  let __type = "cloudflare_list_item" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       asn = Prop.computed __type __id "asn";
       comment = Prop.computed __type __id "comment";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
       list_id = Prop.computed __type __id "list_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_list_item
        (cloudflare_list_item ?asn ?comment ?ip ~hostname ~redirect
           ~account_id ~list_id ());
    attrs = __attrs;
  }

let register ?tf_module ?asn ?comment ?ip ?(hostname = [])
    ?(redirect = []) ~account_id ~list_id __id =
  let (r : _ Tf_core.resource) =
    make ?asn ?comment ?ip ~hostname ~redirect ~account_id ~list_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
