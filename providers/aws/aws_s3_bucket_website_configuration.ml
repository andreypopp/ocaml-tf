(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type error_document = { key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : error_document) -> ()

let yojson_of_error_document =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : error_document -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_document

[@@@deriving.end]

type index_document = { suffix : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : index_document) -> ()

let yojson_of_index_document =
  (function
   | { suffix = v_suffix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_suffix in
         ("suffix", arg) :: bnds
       in
       `Assoc bnds
    : index_document -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_index_document

[@@@deriving.end]

type redirect_all_requests_to = {
  host_name : string prop;
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redirect_all_requests_to) -> ()

let yojson_of_redirect_all_requests_to =
  (function
   | { host_name = v_host_name; protocol = v_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       `Assoc bnds
    : redirect_all_requests_to -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redirect_all_requests_to

[@@@deriving.end]

type routing_rule__condition = {
  http_error_code_returned_equals : string prop option; [@option]
  key_prefix_equals : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_rule__condition) -> ()

let yojson_of_routing_rule__condition =
  (function
   | {
       http_error_code_returned_equals =
         v_http_error_code_returned_equals;
       key_prefix_equals = v_key_prefix_equals;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_prefix_equals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_prefix_equals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_error_code_returned_equals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_error_code_returned_equals", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing_rule__condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_rule__condition

[@@@deriving.end]

type routing_rule__redirect = {
  host_name : string prop option; [@option]
  http_redirect_code : string prop option; [@option]
  protocol : string prop option; [@option]
  replace_key_prefix_with : string prop option; [@option]
  replace_key_with : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_rule__redirect) -> ()

let yojson_of_routing_rule__redirect =
  (function
   | {
       host_name = v_host_name;
       http_redirect_code = v_http_redirect_code;
       protocol = v_protocol;
       replace_key_prefix_with = v_replace_key_prefix_with;
       replace_key_with = v_replace_key_with;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_replace_key_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replace_key_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replace_key_prefix_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replace_key_prefix_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_redirect_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_redirect_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing_rule__redirect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_rule__redirect

[@@@deriving.end]

type routing_rule = {
  condition : routing_rule__condition list;
  redirect : routing_rule__redirect list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_rule) -> ()

let yojson_of_routing_rule =
  (function
   | { condition = v_condition; redirect = v_redirect } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing_rule__redirect v_redirect
         in
         ("redirect", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing_rule__condition
             v_condition
         in
         ("condition", arg) :: bnds
       in
       `Assoc bnds
    : routing_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_rule

[@@@deriving.end]

type aws_s3_bucket_website_configuration = {
  bucket : string prop;
  expected_bucket_owner : string prop option; [@option]
  id : string prop option; [@option]
  routing_rules : string prop option; [@option]
  error_document : error_document list;
  index_document : index_document list;
  redirect_all_requests_to : redirect_all_requests_to list;
  routing_rule : routing_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_website_configuration) -> ()

let yojson_of_aws_s3_bucket_website_configuration =
  (function
   | {
       bucket = v_bucket;
       expected_bucket_owner = v_expected_bucket_owner;
       id = v_id;
       routing_rules = v_routing_rules;
       error_document = v_error_document;
       index_document = v_index_document;
       redirect_all_requests_to = v_redirect_all_requests_to;
       routing_rule = v_routing_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing_rule v_routing_rule
         in
         ("routing_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_redirect_all_requests_to
             v_redirect_all_requests_to
         in
         ("redirect_all_requests_to", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_index_document v_index_document
         in
         ("index_document", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_error_document v_error_document
         in
         ("error_document", arg) :: bnds
       in
       let bnds =
         match v_routing_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "routing_rules", arg in
             bnd :: bnds
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
         match v_expected_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_website_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_website_configuration

[@@@deriving.end]

let error_document ~key () : error_document = { key }
let index_document ~suffix () : index_document = { suffix }

let redirect_all_requests_to ?protocol ~host_name () :
    redirect_all_requests_to =
  { host_name; protocol }

let routing_rule__condition ?http_error_code_returned_equals
    ?key_prefix_equals () : routing_rule__condition =
  { http_error_code_returned_equals; key_prefix_equals }

let routing_rule__redirect ?host_name ?http_redirect_code ?protocol
    ?replace_key_prefix_with ?replace_key_with () :
    routing_rule__redirect =
  {
    host_name;
    http_redirect_code;
    protocol;
    replace_key_prefix_with;
    replace_key_with;
  }

let routing_rule ~condition ~redirect () : routing_rule =
  { condition; redirect }

let aws_s3_bucket_website_configuration ?expected_bucket_owner ?id
    ?routing_rules ~bucket ~error_document ~index_document
    ~redirect_all_requests_to ~routing_rule () :
    aws_s3_bucket_website_configuration =
  {
    bucket;
    expected_bucket_owner;
    id;
    routing_rules;
    error_document;
    index_document;
    redirect_all_requests_to;
    routing_rule;
  }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  routing_rules : string prop;
  website_domain : string prop;
  website_endpoint : string prop;
}

let make ?expected_bucket_owner ?id ?routing_rules ~bucket
    ~error_document ~index_document ~redirect_all_requests_to
    ~routing_rule __id =
  let __type = "aws_s3_bucket_website_configuration" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
       routing_rules = Prop.computed __type __id "routing_rules";
       website_domain = Prop.computed __type __id "website_domain";
       website_endpoint =
         Prop.computed __type __id "website_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_website_configuration
        (aws_s3_bucket_website_configuration ?expected_bucket_owner
           ?id ?routing_rules ~bucket ~error_document ~index_document
           ~redirect_all_requests_to ~routing_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ?routing_rules
    ~bucket ~error_document ~index_document ~redirect_all_requests_to
    ~routing_rule __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ?routing_rules ~bucket
      ~error_document ~index_document ~redirect_all_requests_to
      ~routing_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
