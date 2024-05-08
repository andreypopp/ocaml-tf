(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_set_descriptor = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_set_descriptor) -> ()

let yojson_of_ip_set_descriptor =
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
    : ip_set_descriptor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_set_descriptor

[@@@deriving.end]

type aws_wafregional_ipset = {
  id : string prop option; [@option]
  name : string prop;
  ip_set_descriptor : ip_set_descriptor list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_wafregional_ipset) -> ()

let yojson_of_aws_wafregional_ipset =
  (function
   | {
       id = v_id;
       name = v_name;
       ip_set_descriptor = v_ip_set_descriptor;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ip_set_descriptor then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ip_set_descriptor)
               v_ip_set_descriptor
           in
           let bnd = "ip_set_descriptor", arg in
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
    : aws_wafregional_ipset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_wafregional_ipset

[@@@deriving.end]

let ip_set_descriptor ~type_ ~value () : ip_set_descriptor =
  { type_; value }

let aws_wafregional_ipset ?id ~name ~ip_set_descriptor () :
    aws_wafregional_ipset =
  { id; name; ip_set_descriptor }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~name ~ip_set_descriptor __id =
  let __type = "aws_wafregional_ipset" in
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
      yojson_of_aws_wafregional_ipset
        (aws_wafregional_ipset ?id ~name ~ip_set_descriptor ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~ip_set_descriptor __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~ip_set_descriptor __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
