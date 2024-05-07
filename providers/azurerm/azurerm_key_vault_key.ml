(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rotation_policy__automatic = {
  time_after_creation : string prop option; [@option]
  time_before_expiry : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rotation_policy__automatic) -> ()

let yojson_of_rotation_policy__automatic =
  (function
   | {
       time_after_creation = v_time_after_creation;
       time_before_expiry = v_time_before_expiry;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_before_expiry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_before_expiry", arg in
             bnd :: bnds
       in
       let bnds =
         match v_time_after_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_after_creation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rotation_policy__automatic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rotation_policy__automatic

[@@@deriving.end]

type rotation_policy = {
  expire_after : string prop option; [@option]
  notify_before_expiry : string prop option; [@option]
  automatic : rotation_policy__automatic list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rotation_policy) -> ()

let yojson_of_rotation_policy =
  (function
   | {
       expire_after = v_expire_after;
       notify_before_expiry = v_notify_before_expiry;
       automatic = v_automatic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rotation_policy__automatic
             v_automatic
         in
         ("automatic", arg) :: bnds
       in
       let bnds =
         match v_notify_before_expiry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notify_before_expiry", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expire_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expire_after", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rotation_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rotation_policy

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

type azurerm_key_vault_key = {
  curve : string prop option; [@option]
  expiration_date : string prop option; [@option]
  id : string prop option; [@option]
  key_opts : string prop list;
  key_size : float prop option; [@option]
  key_type : string prop;
  key_vault_id : string prop;
  name : string prop;
  not_before_date : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  rotation_policy : rotation_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_key) -> ()

let yojson_of_azurerm_key_vault_key =
  (function
   | {
       curve = v_curve;
       expiration_date = v_expiration_date;
       id = v_id;
       key_opts = v_key_opts;
       key_size = v_key_size;
       key_type = v_key_type;
       key_vault_id = v_key_vault_id;
       name = v_name;
       not_before_date = v_not_before_date;
       tags = v_tags;
       rotation_policy = v_rotation_policy;
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
           yojson_of_list yojson_of_rotation_policy v_rotation_policy
         in
         ("rotation_policy", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_not_before_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "not_before_date", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_type in
         ("key_type", arg) :: bnds
       in
       let bnds =
         match v_key_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "key_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_key_opts
         in
         ("key_opts", arg) :: bnds
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
         match v_expiration_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_curve with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "curve", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_key

[@@@deriving.end]

let rotation_policy__automatic ?time_after_creation
    ?time_before_expiry () : rotation_policy__automatic =
  { time_after_creation; time_before_expiry }

let rotation_policy ?expire_after ?notify_before_expiry
    ?(automatic = []) () : rotation_policy =
  { expire_after; notify_before_expiry; automatic }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_key ?curve ?expiration_date ?id ?key_size
    ?not_before_date ?tags ?(rotation_policy = []) ?timeouts
    ~key_opts ~key_type ~key_vault_id ~name () :
    azurerm_key_vault_key =
  {
    curve;
    expiration_date;
    id;
    key_opts;
    key_size;
    key_type;
    key_vault_id;
    name;
    not_before_date;
    tags;
    rotation_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  curve : string prop;
  e : string prop;
  expiration_date : string prop;
  id : string prop;
  key_opts : string list prop;
  key_size : float prop;
  key_type : string prop;
  key_vault_id : string prop;
  n : string prop;
  name : string prop;
  not_before_date : string prop;
  public_key_openssh : string prop;
  public_key_pem : string prop;
  resource_id : string prop;
  resource_versionless_id : string prop;
  tags : (string * string) list prop;
  version : string prop;
  versionless_id : string prop;
  x : string prop;
  y : string prop;
}

let make ?curve ?expiration_date ?id ?key_size ?not_before_date ?tags
    ?(rotation_policy = []) ?timeouts ~key_opts ~key_type
    ~key_vault_id ~name __id =
  let __type = "azurerm_key_vault_key" in
  let __attrs =
    ({
       tf_name = __id;
       curve = Prop.computed __type __id "curve";
       e = Prop.computed __type __id "e";
       expiration_date = Prop.computed __type __id "expiration_date";
       id = Prop.computed __type __id "id";
       key_opts = Prop.computed __type __id "key_opts";
       key_size = Prop.computed __type __id "key_size";
       key_type = Prop.computed __type __id "key_type";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       n = Prop.computed __type __id "n";
       name = Prop.computed __type __id "name";
       not_before_date = Prop.computed __type __id "not_before_date";
       public_key_openssh =
         Prop.computed __type __id "public_key_openssh";
       public_key_pem = Prop.computed __type __id "public_key_pem";
       resource_id = Prop.computed __type __id "resource_id";
       resource_versionless_id =
         Prop.computed __type __id "resource_versionless_id";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
       versionless_id = Prop.computed __type __id "versionless_id";
       x = Prop.computed __type __id "x";
       y = Prop.computed __type __id "y";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_key
        (azurerm_key_vault_key ?curve ?expiration_date ?id ?key_size
           ?not_before_date ?tags ~rotation_policy ?timeouts
           ~key_opts ~key_type ~key_vault_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?curve ?expiration_date ?id ?key_size
    ?not_before_date ?tags ?(rotation_policy = []) ?timeouts
    ~key_opts ~key_type ~key_vault_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?curve ?expiration_date ?id ?key_size ?not_before_date ?tags
      ~rotation_policy ?timeouts ~key_opts ~key_type ~key_vault_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
