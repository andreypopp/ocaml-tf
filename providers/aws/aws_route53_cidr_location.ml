(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_cidr_location = {
  cidr_blocks : string prop list;  (** cidr_blocks *)
  cidr_collection_id : string prop;  (** cidr_collection_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53_cidr_location *)

let aws_route53_cidr_location ~cidr_blocks ~cidr_collection_id ~name
    () : aws_route53_cidr_location =
  { cidr_blocks; cidr_collection_id; name }

type t = {
  cidr_blocks : string list prop;
  cidr_collection_id : string prop;
  id : string prop;
  name : string prop;
}

let make ~cidr_blocks ~cidr_collection_id ~name __id =
  let __type = "aws_route53_cidr_location" in
  let __attrs =
    ({
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
