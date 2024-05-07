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

type aws_account_region = {
  account_id : string prop option; [@option]
  enabled : bool prop;
  id : string prop option; [@option]
  region_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_account_region) -> ()

let yojson_of_aws_account_region =
  (function
   | {
       account_id = v_account_id;
       enabled = v_enabled;
       id = v_id;
       region_name = v_region_name;
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
         let arg = yojson_of_prop yojson_of_string v_region_name in
         ("region_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_account_region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_account_region

[@@@deriving.end]

let timeouts ?create ?update () : timeouts = { create; update }

let aws_account_region ?account_id ?id ?timeouts ~enabled
    ~region_name () : aws_account_region =
  { account_id; enabled; id; region_name; timeouts }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
