(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_attachment_accepter = {
  attachment_id : string prop;  (** attachment_id *)
  attachment_type : string prop;  (** attachment_type *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_attachment_accepter *)

let timeouts ?create () : timeouts = { create }

let aws_networkmanager_attachment_accepter ?id ?timeouts
    ~attachment_id ~attachment_type () :
    aws_networkmanager_attachment_accepter =
  { attachment_id; attachment_type; id; timeouts }

type t = {
  attachment_id : string prop;
  attachment_policy_rule_number : float prop;
  attachment_type : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  resource_arn : string prop;
  segment_name : string prop;
  state : string prop;
}

let register ?tf_module ?id ?timeouts ~attachment_id ~attachment_type
    __resource_id =
  let __resource_type = "aws_networkmanager_attachment_accepter" in
  let __resource =
    aws_networkmanager_attachment_accepter ?id ?timeouts
      ~attachment_id ~attachment_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_attachment_accepter __resource);
  let __resource_attributes =
    ({
       attachment_id =
         Prop.computed __resource_type __resource_id "attachment_id";
       attachment_policy_rule_number =
         Prop.computed __resource_type __resource_id
           "attachment_policy_rule_number";
       attachment_type =
         Prop.computed __resource_type __resource_id
           "attachment_type";
       core_network_arn =
         Prop.computed __resource_type __resource_id
           "core_network_arn";
       core_network_id =
         Prop.computed __resource_type __resource_id
           "core_network_id";
       edge_location =
         Prop.computed __resource_type __resource_id "edge_location";
       id = Prop.computed __resource_type __resource_id "id";
       owner_account_id =
         Prop.computed __resource_type __resource_id
           "owner_account_id";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       segment_name =
         Prop.computed __resource_type __resource_id "segment_name";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
