(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identifier = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
}
[@@deriving yojson_of]
(** identifier *)

type purchase_plan = {
  name : string prop;  (** name *)
  product : string prop option; [@option]  (** product *)
  publisher : string prop option; [@option]  (** publisher *)
}
[@@deriving yojson_of]
(** purchase_plan *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_shared_image = {
  accelerated_network_support_enabled : bool prop option; [@option]
      (** accelerated_network_support_enabled *)
  architecture : string prop option; [@option]  (** architecture *)
  confidential_vm_enabled : bool prop option; [@option]
      (** confidential_vm_enabled *)
  confidential_vm_supported : bool prop option; [@option]
      (** confidential_vm_supported *)
  description : string prop option; [@option]  (** description *)
  disk_types_not_allowed : string prop list option; [@option]
      (** disk_types_not_allowed *)
  end_of_life_date : string prop option; [@option]
      (** end_of_life_date *)
  eula : string prop option; [@option]  (** eula *)
  gallery_name : string prop;  (** gallery_name *)
  hyper_v_generation : string prop option; [@option]
      (** hyper_v_generation *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  max_recommended_memory_in_gb : float prop option; [@option]
      (** max_recommended_memory_in_gb *)
  max_recommended_vcpu_count : float prop option; [@option]
      (** max_recommended_vcpu_count *)
  min_recommended_memory_in_gb : float prop option; [@option]
      (** min_recommended_memory_in_gb *)
  min_recommended_vcpu_count : float prop option; [@option]
      (** min_recommended_vcpu_count *)
  name : string prop;  (** name *)
  os_type : string prop;  (** os_type *)
  privacy_statement_uri : string prop option; [@option]
      (** privacy_statement_uri *)
  release_note_uri : string prop option; [@option]
      (** release_note_uri *)
  resource_group_name : string prop;  (** resource_group_name *)
  specialized : bool prop option; [@option]  (** specialized *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  trusted_launch_enabled : bool prop option; [@option]
      (** trusted_launch_enabled *)
  trusted_launch_supported : bool prop option; [@option]
      (** trusted_launch_supported *)
  identifier : identifier list;
  purchase_plan : purchase_plan list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_shared_image *)

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
    ?trusted_launch_supported ?timeouts ~gallery_name ~location ~name
    ~os_type ~resource_group_name ~identifier ~purchase_plan () :
    azurerm_shared_image =
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
    ?trusted_launch_supported ?timeouts ~gallery_name ~location ~name
    ~os_type ~resource_group_name ~identifier ~purchase_plan __id =
  let __type = "azurerm_shared_image" in
  let __attrs =
    ({
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
           ?timeouts ~gallery_name ~location ~name ~os_type
           ~resource_group_name ~identifier ~purchase_plan ());
    attrs = __attrs;
  }

let register ?tf_module ?accelerated_network_support_enabled
    ?architecture ?confidential_vm_enabled ?confidential_vm_supported
    ?description ?disk_types_not_allowed ?end_of_life_date ?eula
    ?hyper_v_generation ?id ?max_recommended_memory_in_gb
    ?max_recommended_vcpu_count ?min_recommended_memory_in_gb
    ?min_recommended_vcpu_count ?privacy_statement_uri
    ?release_note_uri ?specialized ?tags ?trusted_launch_enabled
    ?trusted_launch_supported ?timeouts ~gallery_name ~location ~name
    ~os_type ~resource_group_name ~identifier ~purchase_plan __id =
  let (r : _ Tf_core.resource) =
    make ?accelerated_network_support_enabled ?architecture
      ?confidential_vm_enabled ?confidential_vm_supported
      ?description ?disk_types_not_allowed ?end_of_life_date ?eula
      ?hyper_v_generation ?id ?max_recommended_memory_in_gb
      ?max_recommended_vcpu_count ?min_recommended_memory_in_gb
      ?min_recommended_vcpu_count ?privacy_statement_uri
      ?release_note_uri ?specialized ?tags ?trusted_launch_enabled
      ?trusted_launch_supported ?timeouts ~gallery_name ~location
      ~name ~os_type ~resource_group_name ~identifier ~purchase_plan
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
