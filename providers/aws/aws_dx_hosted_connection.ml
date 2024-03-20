(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_dx_hosted_connection ?id ~bandwidth ~connection_id ~name
    ~owner_account_id ~vlan () : aws_dx_hosted_connection =
  { bandwidth; connection_id; id; name; owner_account_id; vlan }

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

let make ?id ~bandwidth ~connection_id ~name ~owner_account_id ~vlan
    __id =
  let __type = "aws_dx_hosted_connection" in
  let __attrs =
    ({
       aws_device = Prop.computed __type __id "aws_device";
       bandwidth = Prop.computed __type __id "bandwidth";
       connection_id = Prop.computed __type __id "connection_id";
       has_logical_redundancy =
         Prop.computed __type __id "has_logical_redundancy";
       id = Prop.computed __type __id "id";
       jumbo_frame_capable =
         Prop.computed __type __id "jumbo_frame_capable";
       lag_id = Prop.computed __type __id "lag_id";
       loa_issue_time = Prop.computed __type __id "loa_issue_time";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       partner_name = Prop.computed __type __id "partner_name";
       provider_name = Prop.computed __type __id "provider_name";
       region = Prop.computed __type __id "region";
       state = Prop.computed __type __id "state";
       vlan = Prop.computed __type __id "vlan";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_hosted_connection
        (aws_dx_hosted_connection ?id ~bandwidth ~connection_id ~name
           ~owner_account_id ~vlan ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bandwidth ~connection_id ~name
    ~owner_account_id ~vlan __id =
  let (r : _ Tf_core.resource) =
    make ?id ~bandwidth ~connection_id ~name ~owner_account_id ~vlan
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
