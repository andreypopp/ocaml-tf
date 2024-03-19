(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_macie2_invitation_accepter = {
  administrator_account_id : string prop;
      (** administrator_account_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_macie2_invitation_accepter *)

let timeouts ?create () : timeouts = { create }

let aws_macie2_invitation_accepter ?id ?timeouts
    ~administrator_account_id () : aws_macie2_invitation_accepter =
  { administrator_account_id; id; timeouts }

type t = {
  administrator_account_id : string prop;
  id : string prop;
  invitation_id : string prop;
}

let register ?tf_module ?id ?timeouts ~administrator_account_id
    __resource_id =
  let __resource_type = "aws_macie2_invitation_accepter" in
  let __resource =
    aws_macie2_invitation_accepter ?id ?timeouts
      ~administrator_account_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_invitation_accepter __resource);
  let __resource_attributes =
    ({
       administrator_account_id =
         Prop.computed __resource_type __resource_id
           "administrator_account_id";
       id = Prop.computed __resource_type __resource_id "id";
       invitation_id =
         Prop.computed __resource_type __resource_id "invitation_id";
     }
      : t)
  in
  __resource_attributes
