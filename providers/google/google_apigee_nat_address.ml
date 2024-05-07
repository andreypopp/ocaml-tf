(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
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

type google_apigee_nat_address = {
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_nat_address) -> ()

let yojson_of_google_apigee_nat_address =
  (function
   | {
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_apigee_nat_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_nat_address

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_nat_address ?id ?timeouts ~instance_id ~name () :
    google_apigee_nat_address =
  { id; instance_id; name; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  instance_id : string prop;
  ip_address : string prop;
  name : string prop;
  state : string prop;
}

let make ?id ?timeouts ~instance_id ~name __id =
  let __type = "google_apigee_nat_address" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       ip_address = Prop.computed __type __id "ip_address";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_nat_address
        (google_apigee_nat_address ?id ?timeouts ~instance_id ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~instance_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~instance_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
