(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
