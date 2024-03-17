(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_media_store_container_policy = {
  container_name : string prop;  (** container_name *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_media_store_container_policy *)

type t = {
  container_name : string prop;
  id : string prop;
  policy : string prop;
}

let aws_media_store_container_policy ?id ~container_name ~policy
    __resource_id =
  let __resource_type = "aws_media_store_container_policy" in
  let __resource =
    ({ container_name; id; policy }
      : aws_media_store_container_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_media_store_container_policy __resource);
  let __resource_attributes =
    ({
       container_name =
         Prop.computed __resource_type __resource_id "container_name";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
