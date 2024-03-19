(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_ssh_key = {
  body : string prop;  (** body *)
  id : string prop option; [@option]  (** id *)
  server_id : string prop;  (** server_id *)
  user_name : string prop;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_transfer_ssh_key *)

let aws_transfer_ssh_key ?id ~body ~server_id ~user_name () :
    aws_transfer_ssh_key =
  { body; id; server_id; user_name }

type t = {
  body : string prop;
  id : string prop;
  server_id : string prop;
  user_name : string prop;
}

let register ?tf_module ?id ~body ~server_id ~user_name __resource_id
    =
  let __resource_type = "aws_transfer_ssh_key" in
  let __resource =
    aws_transfer_ssh_key ?id ~body ~server_id ~user_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_ssh_key __resource);
  let __resource_attributes =
    ({
       body = Prop.computed __resource_type __resource_id "body";
       id = Prop.computed __resource_type __resource_id "id";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes
