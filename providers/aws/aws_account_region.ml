(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_account_region = {
  account_id : string prop option; [@option]  (** account_id *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  region_name : string prop;  (** region_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_account_region *)

let timeouts ?create ?update () : timeouts = { create; update }

let aws_account_region ?account_id ?id ?timeouts ~enabled
    ~region_name () : aws_account_region =
  { account_id; enabled; id; region_name; timeouts }

type t = {
  account_id : string prop;
  enabled : bool prop;
  id : string prop;
  opt_status : string prop;
  region_name : string prop;
}

let make ?account_id ?id ?timeouts ~enabled ~region_name __id =
  let __type = "aws_account_region" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       opt_status = Prop.computed __type __id "opt_status";
       region_name = Prop.computed __type __id "region_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_account_region
        (aws_account_region ?account_id ?id ?timeouts ~enabled
           ~region_name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?timeouts ~enabled
    ~region_name __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?timeouts ~enabled ~region_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
