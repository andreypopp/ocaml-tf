(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_media_store_container_policy = {
  container_name : string prop;  (** container_name *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_media_store_container_policy *)

let aws_media_store_container_policy ?id ~container_name ~policy () :
    aws_media_store_container_policy =
  { container_name; id; policy }

type t = {
  container_name : string prop;
  id : string prop;
  policy : string prop;
}

let make ?id ~container_name ~policy __id =
  let __type = "aws_media_store_container_policy" in
  let __attrs =
    ({
       container_name = Prop.computed __type __id "container_name";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_media_store_container_policy
        (aws_media_store_container_policy ?id ~container_name ~policy
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~container_name ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~container_name ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
