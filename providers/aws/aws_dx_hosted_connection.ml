(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_hosted_connection = {
  bandwidth : string prop;
  connection_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  owner_account_id : string prop;
  vlan : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_hosted_connection) -> ()

let yojson_of_aws_dx_hosted_connection =
  (function
   | {
       bandwidth = v_bandwidth;
       connection_id = v_connection_id;
       id = v_id;
       name = v_name;
       owner_account_id = v_owner_account_id;
       vlan = v_vlan;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_vlan in
         ("vlan", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_owner_account_id
         in
         ("owner_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connection_id in
         ("connection_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bandwidth in
         ("bandwidth", arg) :: bnds
       in
       `Assoc bnds
    : aws_dx_hosted_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_hosted_connection

[@@@deriving.end]

let aws_dx_hosted_connection ?id ~bandwidth ~connection_id ~name
    ~owner_account_id ~vlan () : aws_dx_hosted_connection =
  { bandwidth; connection_id; id; name; owner_account_id; vlan }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
