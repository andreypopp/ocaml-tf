(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_connection_association = {
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  lag_id : string prop;  (** lag_id *)
}
[@@deriving yojson_of]
(** aws_dx_connection_association *)

let aws_dx_connection_association ?id ~connection_id ~lag_id () :
    aws_dx_connection_association =
  { connection_id; id; lag_id }

type t = {
  connection_id : string prop;
  id : string prop;
  lag_id : string prop;
}

let register ?tf_module ?id ~connection_id ~lag_id __resource_id =
  let __resource_type = "aws_dx_connection_association" in
  let __resource =
    aws_dx_connection_association ?id ~connection_id ~lag_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_connection_association __resource);
  let __resource_attributes =
    ({
       connection_id =
         Prop.computed __resource_type __resource_id "connection_id";
       id = Prop.computed __resource_type __resource_id "id";
       lag_id = Prop.computed __resource_type __resource_id "lag_id";
     }
      : t)
  in
  __resource_attributes
