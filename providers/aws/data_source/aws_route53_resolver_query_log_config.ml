(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_route53_resolver_query_log_config = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  resolver_query_log_config_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_query_log_config) -> ()

let yojson_of_aws_route53_resolver_query_log_config =
  (function
   | {
       id = v_id;
       name = v_name;
       resolver_query_log_config_id = v_resolver_query_log_config_id;
       tags = v_tags;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resolver_query_log_config_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolver_query_log_config_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       `Assoc bnds
    : aws_route53_resolver_query_log_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_query_log_config

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_route53_resolver_query_log_config ?id ?name
    ?resolver_query_log_config_id ?tags ~filter () :
    aws_route53_resolver_query_log_config =
  { id; name; resolver_query_log_config_id; tags; filter }

type t = {
  tf_name : string;
  arn : string prop;
  destination_arn : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  resolver_query_log_config_id : string prop;
  share_status : string prop;
  tags : (string * string) list prop;
}

let make ?id ?name ?resolver_query_log_config_id ?tags ~filter __id =
  let __type = "aws_route53_resolver_query_log_config" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       destination_arn = Prop.computed __type __id "destination_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       resolver_query_log_config_id =
         Prop.computed __type __id "resolver_query_log_config_id";
       share_status = Prop.computed __type __id "share_status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_query_log_config
        (aws_route53_resolver_query_log_config ?id ?name
           ?resolver_query_log_config_id ?tags ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?resolver_query_log_config_id ?tags
    ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?resolver_query_log_config_id ?tags ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
