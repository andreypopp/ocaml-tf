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

type aws_macie2_member = {
  account_id : string prop;
  email : string prop;
  id : string prop option; [@option]
  invitation_disable_email_notification : bool prop option; [@option]
  invitation_message : string prop option; [@option]
  invite : bool prop option; [@option]
  status : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_macie2_member) -> ()

let yojson_of_aws_macie2_member =
  (function
   | {
       account_id = v_account_id;
       email = v_email;
       id = v_id;
       invitation_disable_email_notification =
         v_invitation_disable_email_notification;
       invitation_message = v_invitation_message;
       invite = v_invite;
       status = v_status;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
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
         match v_invitation_disable_email_notification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "invitation_disable_email_notification", arg
             in
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_macie2_member -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_macie2_member

[@@@deriving.end]

let timeouts ?create ?update () : timeouts = { create; update }

let aws_macie2_member ?id ?invitation_disable_email_notification
    ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
    ~account_id ~email () : aws_macie2_member =
  {
    account_id;
    email;
    id;
    invitation_disable_email_notification;
    invitation_message;
    invite;
    status;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  administrator_account_id : string prop;
  arn : string prop;
  email : string prop;
  id : string prop;
  invitation_disable_email_notification : bool prop;
  invitation_message : string prop;
  invite : bool prop;
  invited_at : string prop;
  master_account_id : string prop;
  relationship_status : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  updated_at : string prop;
}

let make ?id ?invitation_disable_email_notification
    ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
    ~account_id ~email __id =
  let __type = "aws_macie2_member" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       administrator_account_id =
         Prop.computed __type __id "administrator_account_id";
       arn = Prop.computed __type __id "arn";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       invitation_disable_email_notification =
         Prop.computed __type __id
           "invitation_disable_email_notification";
       invitation_message =
         Prop.computed __type __id "invitation_message";
       invite = Prop.computed __type __id "invite";
       invited_at = Prop.computed __type __id "invited_at";
       master_account_id =
         Prop.computed __type __id "master_account_id";
       relationship_status =
         Prop.computed __type __id "relationship_status";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_member
        (aws_macie2_member ?id ?invitation_disable_email_notification
           ?invitation_message ?invite ?status ?tags ?tags_all
           ?timeouts ~account_id ~email ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?invitation_disable_email_notification
    ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
    ~account_id ~email __id =
  let (r : _ Tf_core.resource) =
    make ?id ?invitation_disable_email_notification
      ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
      ~account_id ~email __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
