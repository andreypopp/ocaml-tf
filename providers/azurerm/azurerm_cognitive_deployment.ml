(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type model = {
  format : string prop;
  name : string prop;
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : model) -> ()

let yojson_of_model =
  (function
   | { format = v_format; name = v_name; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       `Assoc bnds
    : model -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_model

[@@@deriving.end]

type scale = {
  capacity : float prop option; [@option]
  family : string prop option; [@option]
  size : string prop option; [@option]
  tier : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scale) -> ()

let yojson_of_scale =
  (function
   | {
       capacity = v_capacity;
       family = v_family;
       size = v_size;
       tier = v_tier;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_family with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "family", arg in
             bnd :: bnds
       in
       let bnds =
         match v_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "capacity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scale -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scale

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_cognitive_deployment = {
  cognitive_account_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  rai_policy_name : string prop option; [@option]
  version_upgrade_option : string prop option; [@option]
  model : model list;
  scale : scale list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cognitive_deployment) -> ()

let yojson_of_azurerm_cognitive_deployment =
  (function
   | {
       cognitive_account_id = v_cognitive_account_id;
       id = v_id;
       name = v_name;
       rai_policy_name = v_rai_policy_name;
       version_upgrade_option = v_version_upgrade_option;
       model = v_model;
       scale = v_scale;
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
         let arg = yojson_of_list yojson_of_scale v_scale in
         ("scale", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_model v_model in
         ("model", arg) :: bnds
       in
       let bnds =
         match v_version_upgrade_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_upgrade_option", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rai_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rai_policy_name", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_cognitive_account_id
         in
         ("cognitive_account_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cognitive_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cognitive_deployment

[@@@deriving.end]

let model ?version ~format ~name () : model =
  { format; name; version }

let scale ?capacity ?family ?size ?tier ~type_ () : scale =
  { capacity; family; size; tier; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cognitive_deployment ?id ?rai_policy_name
    ?version_upgrade_option ?timeouts ~cognitive_account_id ~name
    ~model ~scale () : azurerm_cognitive_deployment =
  {
    cognitive_account_id;
    id;
    name;
    rai_policy_name;
    version_upgrade_option;
    model;
    scale;
    timeouts;
  }

type t = {
  tf_name : string;
  cognitive_account_id : string prop;
  id : string prop;
  name : string prop;
  rai_policy_name : string prop;
  version_upgrade_option : string prop;
}

let make ?id ?rai_policy_name ?version_upgrade_option ?timeouts
    ~cognitive_account_id ~name ~model ~scale __id =
  let __type = "azurerm_cognitive_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       cognitive_account_id =
         Prop.computed __type __id "cognitive_account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rai_policy_name = Prop.computed __type __id "rai_policy_name";
       version_upgrade_option =
         Prop.computed __type __id "version_upgrade_option";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cognitive_deployment
        (azurerm_cognitive_deployment ?id ?rai_policy_name
           ?version_upgrade_option ?timeouts ~cognitive_account_id
           ~name ~model ~scale ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?rai_policy_name ?version_upgrade_option
    ?timeouts ~cognitive_account_id ~name ~model ~scale __id =
  let (r : _ Tf_core.resource) =
    make ?id ?rai_policy_name ?version_upgrade_option ?timeouts
      ~cognitive_account_id ~name ~model ~scale __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
