(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rotation_policy__automatic = {
  time_after_creation : string prop option; [@option]
      (** time_after_creation *)
  time_before_expiry : string prop option; [@option]
      (** time_before_expiry *)
}
[@@deriving yojson_of]
(** rotation_policy__automatic *)

type rotation_policy = {
  expire_after : string prop option; [@option]  (** expire_after *)
  notify_before_expiry : string prop option; [@option]
      (** notify_before_expiry *)
  automatic : rotation_policy__automatic list;
}
[@@deriving yojson_of]
(** rotation_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_key_vault_key = {
  curve : string prop option; [@option]  (** curve *)
  expiration_date : string prop option; [@option]
      (** expiration_date *)
  id : string prop option; [@option]  (** id *)
  key_opts : string prop list;  (** key_opts *)
  key_size : float prop option; [@option]  (** key_size *)
  key_type : string prop;  (** key_type *)
  key_vault_id : string prop;  (** key_vault_id *)
  name : string prop;  (** name *)
  not_before_date : string prop option; [@option]
      (** not_before_date *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  rotation_policy : rotation_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_key *)

let rotation_policy__automatic ?time_after_creation
    ?time_before_expiry () : rotation_policy__automatic =
  { time_after_creation; time_before_expiry }

let rotation_policy ?expire_after ?notify_before_expiry ~automatic ()
    : rotation_policy =
  { expire_after; notify_before_expiry; automatic }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_key ?curve ?expiration_date ?id ?key_size
    ?not_before_date ?tags ?timeouts ~key_opts ~key_type
    ~key_vault_id ~name ~rotation_policy () : azurerm_key_vault_key =
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
    ?timeouts ~key_opts ~key_type ~key_vault_id ~name
    ~rotation_policy __id =
  let __type = "azurerm_key_vault_key" in
  let __attrs =
    ({
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
           ?not_before_date ?tags ?timeouts ~key_opts ~key_type
           ~key_vault_id ~name ~rotation_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?curve ?expiration_date ?id ?key_size
    ?not_before_date ?tags ?timeouts ~key_opts ~key_type
    ~key_vault_id ~name ~rotation_policy __id =
  let (r : _ Tf_core.resource) =
    make ?curve ?expiration_date ?id ?key_size ?not_before_date ?tags
      ?timeouts ~key_opts ~key_type ~key_vault_id ~name
      ~rotation_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
