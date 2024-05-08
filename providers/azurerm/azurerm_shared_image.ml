(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identifier = {
  offer : string prop;
  publisher : string prop;
  sku : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identifier) -> ()

let yojson_of_identifier =
  (function
   | { offer = v_offer; publisher = v_publisher; sku = v_sku } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offer in
         ("offer", arg) :: bnds
       in
       `Assoc bnds
    : identifier -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identifier

[@@@deriving.end]

type purchase_plan = {
  name : string prop;
  product : string prop option; [@option]
  publisher : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : purchase_plan) -> ()

let yojson_of_purchase_plan =
  (function
   | { name = v_name; product = v_product; publisher = v_publisher }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_publisher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "publisher", arg in
             bnd :: bnds
       in
       let bnds =
         match v_product with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "product", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : purchase_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_purchase_plan

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

type azurerm_shared_image = {
  accelerated_network_support_enabled : bool prop option; [@option]
  architecture : string prop option; [@option]
  confidential_vm_enabled : bool prop option; [@option]
  confidential_vm_supported : bool prop option; [@option]
  description : string prop option; [@option]
  disk_types_not_allowed : string prop list option; [@option]
  end_of_life_date : string prop option; [@option]
  eula : string prop option; [@option]
  gallery_name : string prop;
  hyper_v_generation : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  max_recommended_memory_in_gb : float prop option; [@option]
  max_recommended_vcpu_count : float prop option; [@option]
  min_recommended_memory_in_gb : float prop option; [@option]
  min_recommended_vcpu_count : float prop option; [@option]
  name : string prop;
  os_type : string prop;
  privacy_statement_uri : string prop option; [@option]
  release_note_uri : string prop option; [@option]
  resource_group_name : string prop;
  specialized : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  trusted_launch_enabled : bool prop option; [@option]
  trusted_launch_supported : bool prop option; [@option]
  identifier : identifier list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  purchase_plan : purchase_plan list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_shared_image) -> ()

let yojson_of_azurerm_shared_image =
  (function
   | {
       accelerated_network_support_enabled =
         v_accelerated_network_support_enabled;
       architecture = v_architecture;
       confidential_vm_enabled = v_confidential_vm_enabled;
       confidential_vm_supported = v_confidential_vm_supported;
       description = v_description;
       disk_types_not_allowed = v_disk_types_not_allowed;
       end_of_life_date = v_end_of_life_date;
       eula = v_eula;
       gallery_name = v_gallery_name;
       hyper_v_generation = v_hyper_v_generation;
       id = v_id;
       location = v_location;
       max_recommended_memory_in_gb = v_max_recommended_memory_in_gb;
       max_recommended_vcpu_count = v_max_recommended_vcpu_count;
       min_recommended_memory_in_gb = v_min_recommended_memory_in_gb;
       min_recommended_vcpu_count = v_min_recommended_vcpu_count;
       name = v_name;
       os_type = v_os_type;
       privacy_statement_uri = v_privacy_statement_uri;
       release_note_uri = v_release_note_uri;
       resource_group_name = v_resource_group_name;
       specialized = v_specialized;
       tags = v_tags;
       trusted_launch_enabled = v_trusted_launch_enabled;
       trusted_launch_supported = v_trusted_launch_supported;
       identifier = v_identifier;
       purchase_plan = v_purchase_plan;
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
         if Stdlib.( = ) [] v_purchase_plan then bnds
         else
           let arg =
             (yojson_of_list yojson_of_purchase_plan) v_purchase_plan
           in
           let bnd = "purchase_plan", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identifier then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identifier) v_identifier
           in
           let bnd = "identifier", arg in
           bnd :: bnds
       in
       let bnds =
         match v_trusted_launch_supported with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "trusted_launch_supported", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trusted_launch_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "trusted_launch_enabled", arg in
             bnd :: bnds
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
         match v_specialized with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "specialized", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_release_note_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "release_note_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_privacy_statement_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "privacy_statement_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_type in
         ("os_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_recommended_vcpu_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_recommended_vcpu_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_recommended_memory_in_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_recommended_memory_in_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_recommended_vcpu_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_recommended_vcpu_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_recommended_memory_in_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_recommended_memory_in_gb", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_hyper_v_generation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hyper_v_generation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gallery_name in
         ("gallery_name", arg) :: bnds
       in
       let bnds =
         match v_eula with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eula", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_of_life_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_of_life_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_types_not_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disk_types_not_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_confidential_vm_supported with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "confidential_vm_supported", arg in
             bnd :: bnds
       in
       let bnds =
         match v_confidential_vm_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "confidential_vm_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_architecture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "architecture", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerated_network_support_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "accelerated_network_support_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_shared_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_shared_image

[@@@deriving.end]

let identifier ~offer ~publisher ~sku () : identifier =
  { offer; publisher; sku }

let purchase_plan ?product ?publisher ~name () : purchase_plan =
  { name; product; publisher }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_shared_image ?accelerated_network_support_enabled
    ?architecture ?confidential_vm_enabled ?confidential_vm_supported
    ?description ?disk_types_not_allowed ?end_of_life_date ?eula
    ?hyper_v_generation ?id ?max_recommended_memory_in_gb
    ?max_recommended_vcpu_count ?min_recommended_memory_in_gb
    ?min_recommended_vcpu_count ?privacy_statement_uri
    ?release_note_uri ?specialized ?tags ?trusted_launch_enabled
    ?trusted_launch_supported ?(purchase_plan = []) ?timeouts
    ~gallery_name ~location ~name ~os_type ~resource_group_name
    ~identifier () : azurerm_shared_image =
  {
    accelerated_network_support_enabled;
    architecture;
    confidential_vm_enabled;
    confidential_vm_supported;
    description;
    disk_types_not_allowed;
    end_of_life_date;
    eula;
    gallery_name;
    hyper_v_generation;
    id;
    location;
    max_recommended_memory_in_gb;
    max_recommended_vcpu_count;
    min_recommended_memory_in_gb;
    min_recommended_vcpu_count;
    name;
    os_type;
    privacy_statement_uri;
    release_note_uri;
    resource_group_name;
    specialized;
    tags;
    trusted_launch_enabled;
    trusted_launch_supported;
    identifier;
    purchase_plan;
    timeouts;
  }

type t = {
  tf_name : string;
  accelerated_network_support_enabled : bool prop;
  architecture : string prop;
  confidential_vm_enabled : bool prop;
  confidential_vm_supported : bool prop;
  description : string prop;
  disk_types_not_allowed : string list prop;
  end_of_life_date : string prop;
  eula : string prop;
  gallery_name : string prop;
  hyper_v_generation : string prop;
  id : string prop;
  location : string prop;
  max_recommended_memory_in_gb : float prop;
  max_recommended_vcpu_count : float prop;
  min_recommended_memory_in_gb : float prop;
  min_recommended_vcpu_count : float prop;
  name : string prop;
  os_type : string prop;
  privacy_statement_uri : string prop;
  release_note_uri : string prop;
  resource_group_name : string prop;
  specialized : bool prop;
  tags : (string * string) list prop;
  trusted_launch_enabled : bool prop;
  trusted_launch_supported : bool prop;
}

let make ?accelerated_network_support_enabled ?architecture
    ?confidential_vm_enabled ?confidential_vm_supported ?description
    ?disk_types_not_allowed ?end_of_life_date ?eula
    ?hyper_v_generation ?id ?max_recommended_memory_in_gb
    ?max_recommended_vcpu_count ?min_recommended_memory_in_gb
    ?min_recommended_vcpu_count ?privacy_statement_uri
    ?release_note_uri ?specialized ?tags ?trusted_launch_enabled
    ?trusted_launch_supported ?(purchase_plan = []) ?timeouts
    ~gallery_name ~location ~name ~os_type ~resource_group_name
    ~identifier __id =
  let __type = "azurerm_shared_image" in
  let __attrs =
    ({
       tf_name = __id;
       accelerated_network_support_enabled =
         Prop.computed __type __id
           "accelerated_network_support_enabled";
       architecture = Prop.computed __type __id "architecture";
       confidential_vm_enabled =
         Prop.computed __type __id "confidential_vm_enabled";
       confidential_vm_supported =
         Prop.computed __type __id "confidential_vm_supported";
       description = Prop.computed __type __id "description";
       disk_types_not_allowed =
         Prop.computed __type __id "disk_types_not_allowed";
       end_of_life_date =
         Prop.computed __type __id "end_of_life_date";
       eula = Prop.computed __type __id "eula";
       gallery_name = Prop.computed __type __id "gallery_name";
       hyper_v_generation =
         Prop.computed __type __id "hyper_v_generation";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       max_recommended_memory_in_gb =
         Prop.computed __type __id "max_recommended_memory_in_gb";
       max_recommended_vcpu_count =
         Prop.computed __type __id "max_recommended_vcpu_count";
       min_recommended_memory_in_gb =
         Prop.computed __type __id "min_recommended_memory_in_gb";
       min_recommended_vcpu_count =
         Prop.computed __type __id "min_recommended_vcpu_count";
       name = Prop.computed __type __id "name";
       os_type = Prop.computed __type __id "os_type";
       privacy_statement_uri =
         Prop.computed __type __id "privacy_statement_uri";
       release_note_uri =
         Prop.computed __type __id "release_note_uri";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       specialized = Prop.computed __type __id "specialized";
       tags = Prop.computed __type __id "tags";
       trusted_launch_enabled =
         Prop.computed __type __id "trusted_launch_enabled";
       trusted_launch_supported =
         Prop.computed __type __id "trusted_launch_supported";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_shared_image
        (azurerm_shared_image ?accelerated_network_support_enabled
           ?architecture ?confidential_vm_enabled
           ?confidential_vm_supported ?description
           ?disk_types_not_allowed ?end_of_life_date ?eula
           ?hyper_v_generation ?id ?max_recommended_memory_in_gb
           ?max_recommended_vcpu_count ?min_recommended_memory_in_gb
           ?min_recommended_vcpu_count ?privacy_statement_uri
           ?release_note_uri ?specialized ?tags
           ?trusted_launch_enabled ?trusted_launch_supported
           ~purchase_plan ?timeouts ~gallery_name ~location ~name
           ~os_type ~resource_group_name ~identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?accelerated_network_support_enabled
    ?architecture ?confidential_vm_enabled ?confidential_vm_supported
    ?description ?disk_types_not_allowed ?end_of_life_date ?eula
    ?hyper_v_generation ?id ?max_recommended_memory_in_gb
    ?max_recommended_vcpu_count ?min_recommended_memory_in_gb
    ?min_recommended_vcpu_count ?privacy_statement_uri
    ?release_note_uri ?specialized ?tags ?trusted_launch_enabled
    ?trusted_launch_supported ?(purchase_plan = []) ?timeouts
    ~gallery_name ~location ~name ~os_type ~resource_group_name
    ~identifier __id =
  let (r : _ Tf_core.resource) =
    make ?accelerated_network_support_enabled ?architecture
      ?confidential_vm_enabled ?confidential_vm_supported
      ?description ?disk_types_not_allowed ?end_of_life_date ?eula
      ?hyper_v_generation ?id ?max_recommended_memory_in_gb
      ?max_recommended_vcpu_count ?min_recommended_memory_in_gb
      ?min_recommended_vcpu_count ?privacy_statement_uri
      ?release_note_uri ?specialized ?tags ?trusted_launch_enabled
      ?trusted_launch_supported ~purchase_plan ?timeouts
      ~gallery_name ~location ~name ~os_type ~resource_group_name
      ~identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
