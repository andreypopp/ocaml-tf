(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_thing_principal_attachment = {
  id : string prop option; [@option]  (** id *)
  principal : string prop;  (** principal *)
  thing : string prop;  (** thing *)
}
[@@deriving yojson_of]
(** aws_iot_thing_principal_attachment *)

type t = {
  id : string prop;
  principal : string prop;
  thing : string prop;
}

let aws_iot_thing_principal_attachment ?id ~principal ~thing
    __resource_id =
  let __resource_type = "aws_iot_thing_principal_attachment" in
  let __resource =
    ({ id; principal; thing } : aws_iot_thing_principal_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_thing_principal_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       principal =
         Prop.computed __resource_type __resource_id "principal";
       thing = Prop.computed __resource_type __resource_id "thing";
     }
      : t)
  in
  __resource_attributes
