(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type git_repository__basic_auth = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** git_repository__basic_auth *)

type git_repository__ssh_auth = {
  host_key : string prop option; [@option]  (** host_key *)
  host_key_algorithm : string prop option; [@option]
      (** host_key_algorithm *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** git_repository__ssh_auth *)

type git_repository = {
  branch : string prop option; [@option]  (** branch *)
  ca_certificate_id : string prop option; [@option]
      (** ca_certificate_id *)
  commit : string prop option; [@option]  (** commit *)
  git_tag : string prop option; [@option]  (** git_tag *)
  interval_in_seconds : float prop option; [@option]
      (** interval_in_seconds *)
  path : string prop option; [@option]  (** path *)
  url : string prop;  (** url *)
  basic_auth : git_repository__basic_auth list;
  ssh_auth : git_repository__ssh_auth list;
}
[@@deriving yojson_of]
(** git_repository *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_customized_accelerator = {
  accelerator_tags : string prop list option; [@option]
      (** accelerator_tags *)
  accelerator_type : string prop option; [@option]
      (** accelerator_type *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  icon_url : string prop option; [@option]  (** icon_url *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_accelerator_id : string prop;
      (** spring_cloud_accelerator_id *)
  git_repository : git_repository list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_customized_accelerator *)

let git_repository__basic_auth ~password ~username () :
    git_repository__basic_auth =
  { password; username }

let git_repository__ssh_auth ?host_key ?host_key_algorithm
    ~private_key () : git_repository__ssh_auth =
  { host_key; host_key_algorithm; private_key }

let git_repository ?branch ?ca_certificate_id ?commit ?git_tag
    ?interval_in_seconds ?path ~url ~basic_auth ~ssh_auth () :
    git_repository =
  {
    branch;
    ca_certificate_id;
    commit;
    git_tag;
    interval_in_seconds;
    path;
    url;
    basic_auth;
    ssh_auth;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_customized_accelerator ?accelerator_tags
    ?accelerator_type ?description ?display_name ?icon_url ?id
    ?timeouts ~name ~spring_cloud_accelerator_id ~git_repository () :
    azurerm_spring_cloud_customized_accelerator =
  {
    accelerator_tags;
    accelerator_type;
    description;
    display_name;
    icon_url;
    id;
    name;
    spring_cloud_accelerator_id;
    git_repository;
    timeouts;
  }

type t = {
  accelerator_tags : string list prop;
  accelerator_type : string prop;
  description : string prop;
  display_name : string prop;
  icon_url : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_accelerator_id : string prop;
}

let make ?accelerator_tags ?accelerator_type ?description
    ?display_name ?icon_url ?id ?timeouts ~name
    ~spring_cloud_accelerator_id ~git_repository __id =
  let __type = "azurerm_spring_cloud_customized_accelerator" in
  let __attrs =
    ({
       accelerator_tags =
         Prop.computed __type __id "accelerator_tags";
       accelerator_type =
         Prop.computed __type __id "accelerator_type";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       icon_url = Prop.computed __type __id "icon_url";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_accelerator_id =
         Prop.computed __type __id "spring_cloud_accelerator_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_customized_accelerator
        (azurerm_spring_cloud_customized_accelerator
           ?accelerator_tags ?accelerator_type ?description
           ?display_name ?icon_url ?id ?timeouts ~name
           ~spring_cloud_accelerator_id ~git_repository ());
    attrs = __attrs;
  }

let register ?tf_module ?accelerator_tags ?accelerator_type
    ?description ?display_name ?icon_url ?id ?timeouts ~name
    ~spring_cloud_accelerator_id ~git_repository __id =
  let (r : _ Tf_core.resource) =
    make ?accelerator_tags ?accelerator_type ?description
      ?display_name ?icon_url ?id ?timeouts ~name
      ~spring_cloud_accelerator_id ~git_repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
