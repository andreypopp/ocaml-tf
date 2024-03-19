(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_guardduty_invite_accepter = {
  detector_id : string prop;  (** detector_id *)
  id : string prop option; [@option]  (** id *)
  master_account_id : string prop;  (** master_account_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_guardduty_invite_accepter *)

let timeouts ?create () : timeouts = { create }

let aws_guardduty_invite_accepter ?id ?timeouts ~detector_id
    ~master_account_id () : aws_guardduty_invite_accepter =
  { detector_id; id; master_account_id; timeouts }

type t = {
  detector_id : string prop;
  id : string prop;
  master_account_id : string prop;
}

let register ?tf_module ?id ?timeouts ~detector_id ~master_account_id
    __resource_id =
  let __resource_type = "aws_guardduty_invite_accepter" in
  let __resource =
    aws_guardduty_invite_accepter ?id ?timeouts ~detector_id
      ~master_account_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_invite_accepter __resource);
  let __resource_attributes =
    ({
       detector_id =
         Prop.computed __resource_type __resource_id "detector_id";
       id = Prop.computed __resource_type __resource_id "id";
       master_account_id =
         Prop.computed __resource_type __resource_id
           "master_account_id";
     }
      : t)
  in
  __resource_attributes
