(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_guardduty_member = {
  account_id : string prop;
  detector_id : string prop;
  disable_email_notification : bool prop option; [@option]
  email : string prop;
  id : string prop option; [@option]
  invitation_message : string prop option; [@option]
  invite : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_guardduty_member) -> ()

let yojson_of_aws_guardduty_member =
  (function
   | {
       account_id = v_account_id;
       detector_id = v_detector_id;
       disable_email_notification = v_disable_email_notification;
       email = v_email;
       id = v_id;
       invitation_message = v_invitation_message;
       invite = v_invite;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_invite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_invitation_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "invitation_message", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         match v_disable_email_notification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_email_notification", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_detector_id in
         ("detector_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_guardduty_member -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_member

[@@@deriving.end]

let timeouts ?create ?update () : timeouts = { create; update }

let aws_guardduty_member ?disable_email_notification ?id
    ?invitation_message ?invite ?timeouts ~account_id ~detector_id
    ~email () : aws_guardduty_member =
  {
    account_id;
    detector_id;
    disable_email_notification;
    email;
    id;
    invitation_message;
    invite;
    timeouts;
  }

type t = {
  account_id : string prop;
  detector_id : string prop;
  disable_email_notification : bool prop;
  email : string prop;
  id : string prop;
  invitation_message : string prop;
  invite : bool prop;
  relationship_status : string prop;
}

let make ?disable_email_notification ?id ?invitation_message ?invite
    ?timeouts ~account_id ~detector_id ~email __id =
  let __type = "aws_guardduty_member" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       detector_id = Prop.computed __type __id "detector_id";
       disable_email_notification =
         Prop.computed __type __id "disable_email_notification";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       invitation_message =
         Prop.computed __type __id "invitation_message";
       invite = Prop.computed __type __id "invite";
       relationship_status =
         Prop.computed __type __id "relationship_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_member
        (aws_guardduty_member ?disable_email_notification ?id
           ?invitation_message ?invite ?timeouts ~account_id
           ~detector_id ~email ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_email_notification ?id
    ?invitation_message ?invite ?timeouts ~account_id ~detector_id
    ~email __id =
  let (r : _ Tf_core.resource) =
    make ?disable_email_notification ?id ?invitation_message ?invite
      ?timeouts ~account_id ~detector_id ~email __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
