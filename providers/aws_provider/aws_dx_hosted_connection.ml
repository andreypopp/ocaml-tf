(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_hosted_connection = {
  bandwidth : string prop;  (** bandwidth *)
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner_account_id : string prop;  (** owner_account_id *)
  vlan : float prop;  (** vlan *)
}
[@@deriving yojson_of]
(** aws_dx_hosted_connection *)

type t = {
  aws_device : string prop;
  bandwidth : string prop;
  connection_id : string prop;
  has_logical_redundancy : string prop;
  id : string prop;
  jumbo_frame_capable : bool prop;
  lag_id : string prop;
  loa_issue_time : string prop;
  location : string prop;
  name : string prop;
  owner_account_id : string prop;
  partner_name : string prop;
  provider_name : string prop;
  region : string prop;
  state : string prop;
  vlan : float prop;
}

let aws_dx_hosted_connection ?id ~bandwidth ~connection_id ~name
    ~owner_account_id ~vlan __resource_id =
  let __resource_type = "aws_dx_hosted_connection" in
  let __resource =
    ({ bandwidth; connection_id; id; name; owner_account_id; vlan }
      : aws_dx_hosted_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_hosted_connection __resource);
  let __resource_attributes =
    ({
       aws_device =
         Prop.computed __resource_type __resource_id "aws_device";
       bandwidth =
         Prop.computed __resource_type __resource_id "bandwidth";
       connection_id =
         Prop.computed __resource_type __resource_id "connection_id";
       has_logical_redundancy =
         Prop.computed __resource_type __resource_id
           "has_logical_redundancy";
       id = Prop.computed __resource_type __resource_id "id";
       jumbo_frame_capable =
         Prop.computed __resource_type __resource_id
           "jumbo_frame_capable";
       lag_id = Prop.computed __resource_type __resource_id "lag_id";
       loa_issue_time =
         Prop.computed __resource_type __resource_id "loa_issue_time";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       owner_account_id =
         Prop.computed __resource_type __resource_id
           "owner_account_id";
       partner_name =
         Prop.computed __resource_type __resource_id "partner_name";
       provider_name =
         Prop.computed __resource_type __resource_id "provider_name";
       region = Prop.computed __resource_type __resource_id "region";
       state = Prop.computed __resource_type __resource_id "state";
       vlan = Prop.computed __resource_type __resource_id "vlan";
     }
      : t)
  in
  __resource_attributes
