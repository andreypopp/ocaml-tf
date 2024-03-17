(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_connection_confirmation = {
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_dx_connection_confirmation *)

type t = { connection_id : string prop; id : string prop }

let aws_dx_connection_confirmation ?id ~connection_id __resource_id =
  let __resource_type = "aws_dx_connection_confirmation" in
  let __resource =
    ({ connection_id; id } : aws_dx_connection_confirmation)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_connection_confirmation __resource);
  let __resource_attributes =
    ({
       connection_id =
         Prop.computed __resource_type __resource_id "connection_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
