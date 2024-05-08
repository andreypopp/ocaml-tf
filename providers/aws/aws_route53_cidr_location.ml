(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_cidr_location = {
  cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cidr_collection_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_cidr_location) -> ()

let yojson_of_aws_route53_cidr_location =
  (function
   | {
       cidr_blocks = v_cidr_blocks;
       cidr_collection_id = v_cidr_collection_id;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cidr_collection_id
         in
         ("cidr_collection_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cidr_blocks
           in
           let bnd = "cidr_blocks", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_route53_cidr_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_cidr_location

[@@@deriving.end]

let aws_route53_cidr_location ~cidr_blocks ~cidr_collection_id ~name
    () : aws_route53_cidr_location =
  { cidr_blocks; cidr_collection_id; name }

type t = {
  tf_name : string;
  cidr_blocks : string list prop;
  cidr_collection_id : string prop;
  id : string prop;
  name : string prop;
}

let make ~cidr_blocks ~cidr_collection_id ~name __id =
  let __type = "aws_route53_cidr_location" in
  let __attrs =
    ({
       tf_name = __id;
       cidr_blocks = Prop.computed __type __id "cidr_blocks";
       cidr_collection_id =
         Prop.computed __type __id "cidr_collection_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_cidr_location
        (aws_route53_cidr_location ~cidr_blocks ~cidr_collection_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ~cidr_blocks ~cidr_collection_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ~cidr_blocks ~cidr_collection_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
