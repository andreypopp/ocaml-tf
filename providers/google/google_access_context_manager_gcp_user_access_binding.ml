(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_access_context_manager_gcp_user_access_binding = {
  access_levels : string prop list;
  group_key : string prop;
  id : string prop option; [@option]
  organization_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_access_context_manager_gcp_user_access_binding) ->
  ()

let yojson_of_google_access_context_manager_gcp_user_access_binding =
  (function
   | {
       access_levels = v_access_levels;
       group_key = v_group_key;
       id = v_id;
       organization_id = v_organization_id;
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
           yojson_of_prop yojson_of_string v_organization_id
         in
         ("organization_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_group_key in
         ("group_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_access_levels
         in
         ("access_levels", arg) :: bnds
       in
       `Assoc bnds
    : google_access_context_manager_gcp_user_access_binding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_access_context_manager_gcp_user_access_binding

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_gcp_user_access_binding ?id
    ?timeouts ~access_levels ~group_key ~organization_id () :
    google_access_context_manager_gcp_user_access_binding =
  { access_levels; group_key; id; organization_id; timeouts }

type t = {
  tf_name : string;
  access_levels : string list prop;
  group_key : string prop;
  id : string prop;
  name : string prop;
  organization_id : string prop;
}

let make ?id ?timeouts ~access_levels ~group_key ~organization_id
    __id =
  let __type =
    "google_access_context_manager_gcp_user_access_binding"
  in
  let __attrs =
    ({
       tf_name = __id;
       access_levels = Prop.computed __type __id "access_levels";
       group_key = Prop.computed __type __id "group_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       organization_id = Prop.computed __type __id "organization_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_gcp_user_access_binding
        (google_access_context_manager_gcp_user_access_binding ?id
           ?timeouts ~access_levels ~group_key ~organization_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~access_levels ~group_key
    ~organization_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~access_levels ~group_key ~organization_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
