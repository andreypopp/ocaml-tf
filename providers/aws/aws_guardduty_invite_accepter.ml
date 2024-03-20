(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_guardduty_invite_accepter = {
  detector_id : string prop;
  id : string prop option; [@option]
  master_account_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_guardduty_invite_accepter) -> ()

let yojson_of_aws_guardduty_invite_accepter =
  (function
   | {
       detector_id = v_detector_id;
       id = v_id;
       master_account_id = v_master_account_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_master_account_id
         in
         ("master_account_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_detector_id in
         ("detector_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_guardduty_invite_accepter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_invite_accepter

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_guardduty_invite_accepter ?id ?timeouts ~detector_id
    ~master_account_id () : aws_guardduty_invite_accepter =
  { detector_id; id; master_account_id; timeouts }

type t = {
  detector_id : string prop;
  id : string prop;
  master_account_id : string prop;
}

let make ?id ?timeouts ~detector_id ~master_account_id __id =
  let __type = "aws_guardduty_invite_accepter" in
  let __attrs =
    ({
       detector_id = Prop.computed __type __id "detector_id";
       id = Prop.computed __type __id "id";
       master_account_id =
         Prop.computed __type __id "master_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_invite_accepter
        (aws_guardduty_invite_accepter ?id ?timeouts ~detector_id
           ~master_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~detector_id ~master_account_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~detector_id ~master_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
