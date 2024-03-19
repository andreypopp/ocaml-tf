(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_invite_accepter = {
  id : string prop option; [@option]  (** id *)
  master_id : string prop;  (** master_id *)
}
[@@deriving yojson_of]
(** aws_securityhub_invite_accepter *)

let aws_securityhub_invite_accepter ?id ~master_id () :
    aws_securityhub_invite_accepter =
  { id; master_id }

type t = {
  id : string prop;
  invitation_id : string prop;
  master_id : string prop;
}

let register ?tf_module ?id ~master_id __resource_id =
  let __resource_type = "aws_securityhub_invite_accepter" in
  let __resource =
    aws_securityhub_invite_accepter ?id ~master_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_invite_accepter __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       invitation_id =
         Prop.computed __resource_type __resource_id "invitation_id";
       master_id =
         Prop.computed __resource_type __resource_id "master_id";
     }
      : t)
  in
  __resource_attributes
