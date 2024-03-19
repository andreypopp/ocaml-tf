(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_member = {
  account_id : string prop;  (** account_id *)
  email : string prop option; [@option]  (** email *)
  id : string prop option; [@option]  (** id *)
  invite : bool prop option; [@option]  (** invite *)
}
[@@deriving yojson_of]
(** aws_securityhub_member *)

let aws_securityhub_member ?email ?id ?invite ~account_id () :
    aws_securityhub_member =
  { account_id; email; id; invite }

type t = {
  account_id : string prop;
  email : string prop;
  id : string prop;
  invite : bool prop;
  master_id : string prop;
  member_status : string prop;
}

let register ?tf_module ?email ?id ?invite ~account_id __resource_id
    =
  let __resource_type = "aws_securityhub_member" in
  let __resource =
    aws_securityhub_member ?email ?id ?invite ~account_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_member __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
       invite = Prop.computed __resource_type __resource_id "invite";
       master_id =
         Prop.computed __resource_type __resource_id "master_id";
       member_status =
         Prop.computed __resource_type __resource_id "member_status";
     }
      : t)
  in
  __resource_attributes
