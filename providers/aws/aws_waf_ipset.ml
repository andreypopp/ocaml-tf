(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_set_descriptors = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_set_descriptors) -> ()

let yojson_of_ip_set_descriptors =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : ip_set_descriptors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_set_descriptors

[@@@deriving.end]

type aws_waf_ipset = {
  id : string prop option; [@option]
  name : string prop;
  ip_set_descriptors : ip_set_descriptors list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_waf_ipset) -> ()

let yojson_of_aws_waf_ipset =
  (function
   | {
       id = v_id;
       name = v_name;
       ip_set_descriptors = v_ip_set_descriptors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ip_set_descriptors then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ip_set_descriptors)
               v_ip_set_descriptors
           in
           let bnd = "ip_set_descriptors", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_waf_ipset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_waf_ipset

[@@@deriving.end]

let ip_set_descriptors ~type_ ~value () : ip_set_descriptors =
  { type_; value }

let aws_waf_ipset ?id ~name ~ip_set_descriptors () : aws_waf_ipset =
  { id; name; ip_set_descriptors }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~name ~ip_set_descriptors __id =
  let __type = "aws_waf_ipset" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_waf_ipset
        (aws_waf_ipset ?id ~name ~ip_set_descriptors ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~ip_set_descriptors __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~ip_set_descriptors __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
