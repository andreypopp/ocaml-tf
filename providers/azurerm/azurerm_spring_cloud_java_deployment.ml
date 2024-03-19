(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type quota = {
  cpu : string prop option; [@option]  (** cpu *)
  memory : string prop option; [@option]  (** memory *)
}
[@@deriving yojson_of]
(** quota *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_java_deployment = {
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  id : string prop option; [@option]  (** id *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  jvm_options : string prop option; [@option]  (** jvm_options *)
  name : string prop;  (** name *)
  runtime_version : string prop option; [@option]
      (** runtime_version *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  quota : quota list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_java_deployment *)

let quota ?cpu ?memory () : quota = { cpu; memory }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_java_deployment ?environment_variables ?id
    ?instance_count ?jvm_options ?runtime_version ?timeouts ~name
    ~spring_cloud_app_id ~quota () :
    azurerm_spring_cloud_java_deployment =
  {
    environment_variables;
    id;
    instance_count;
    jvm_options;
    name;
    runtime_version;
    spring_cloud_app_id;
    quota;
    timeouts;
  }

type t = {
  environment_variables : (string * string) list prop;
  id : string prop;
  instance_count : float prop;
  jvm_options : string prop;
  name : string prop;
  runtime_version : string prop;
  spring_cloud_app_id : string prop;
}

let register ?tf_module ?environment_variables ?id ?instance_count
    ?jvm_options ?runtime_version ?timeouts ~name
    ~spring_cloud_app_id ~quota __resource_id =
  let __resource_type = "azurerm_spring_cloud_java_deployment" in
  let __resource =
    azurerm_spring_cloud_java_deployment ?environment_variables ?id
      ?instance_count ?jvm_options ?runtime_version ?timeouts ~name
      ~spring_cloud_app_id ~quota ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_java_deployment __resource);
  let __resource_attributes =
    ({
       environment_variables =
         Prop.computed __resource_type __resource_id
           "environment_variables";
       id = Prop.computed __resource_type __resource_id "id";
       instance_count =
         Prop.computed __resource_type __resource_id "instance_count";
       jvm_options =
         Prop.computed __resource_type __resource_id "jvm_options";
       name = Prop.computed __resource_type __resource_id "name";
       runtime_version =
         Prop.computed __resource_type __resource_id
           "runtime_version";
       spring_cloud_app_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_app_id";
     }
      : t)
  in
  __resource_attributes
