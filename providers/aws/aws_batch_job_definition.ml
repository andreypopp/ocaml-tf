(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type eks_properties__pod_properties__containers__env = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** eks_properties__pod_properties__containers__env *)

type eks_properties__pod_properties__containers__resources = {
  limits : (string * string prop) list option; [@option]
      (** limits *)
  requests : (string * string prop) list option; [@option]
      (** requests *)
}
[@@deriving yojson_of]
(** eks_properties__pod_properties__containers__resources *)

type eks_properties__pod_properties__containers__security_context = {
  privileged : bool prop option; [@option]  (** privileged *)
  read_only_root_file_system : bool prop option; [@option]
      (** read_only_root_file_system *)
  run_as_group : float prop option; [@option]  (** run_as_group *)
  run_as_non_root : bool prop option; [@option]
      (** run_as_non_root *)
  run_as_user : float prop option; [@option]  (** run_as_user *)
}
[@@deriving yojson_of]
(** eks_properties__pod_properties__containers__security_context *)

type eks_properties__pod_properties__containers__volume_mounts = {
  mount_path : string prop;  (** mount_path *)
  name : string prop;  (** name *)
  read_only : bool prop option; [@option]  (** read_only *)
}
[@@deriving yojson_of]
(** eks_properties__pod_properties__containers__volume_mounts *)

type eks_properties__pod_properties__containers = {
  args : string prop list option; [@option]  (** args *)
  command : string prop list option; [@option]  (** command *)
  image : string prop;  (** image *)
  image_pull_policy : string prop option; [@option]
      (** image_pull_policy *)
  name : string prop option; [@option]  (** name *)
  env : eks_properties__pod_properties__containers__env list;
  resources :
    eks_properties__pod_properties__containers__resources list;
  security_context :
    eks_properties__pod_properties__containers__security_context list;
  volume_mounts :
    eks_properties__pod_properties__containers__volume_mounts list;
}
[@@deriving yojson_of]
(** eks_properties__pod_properties__containers *)

type eks_properties__pod_properties__metadata = {
  labels : (string * string prop) list option; [@option]
      (** labels *)
}
[@@deriving yojson_of]
(** eks_properties__pod_properties__metadata *)

type eks_properties__pod_properties__volumes__empty_dir = {
  medium : string prop option; [@option]  (** medium *)
  size_limit : string prop;  (** size_limit *)
}
[@@deriving yojson_of]
(** eks_properties__pod_properties__volumes__empty_dir *)

type eks_properties__pod_properties__volumes__host_path = {
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** eks_properties__pod_properties__volumes__host_path *)

type eks_properties__pod_properties__volumes__secret = {
  optional : bool prop option; [@option]  (** optional *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** eks_properties__pod_properties__volumes__secret *)

type eks_properties__pod_properties__volumes = {
  name : string prop option; [@option]  (** name *)
  empty_dir :
    eks_properties__pod_properties__volumes__empty_dir list;
  host_path :
    eks_properties__pod_properties__volumes__host_path list;
  secret : eks_properties__pod_properties__volumes__secret list;
}
[@@deriving yojson_of]
(** eks_properties__pod_properties__volumes *)

type eks_properties__pod_properties = {
  dns_policy : string prop option; [@option]  (** dns_policy *)
  host_network : bool prop option; [@option]  (** host_network *)
  service_account_name : string prop option; [@option]
      (** service_account_name *)
  containers : eks_properties__pod_properties__containers list;
  metadata : eks_properties__pod_properties__metadata list;
  volumes : eks_properties__pod_properties__volumes list;
}
[@@deriving yojson_of]
(** eks_properties__pod_properties *)

type eks_properties = {
  pod_properties : eks_properties__pod_properties list;
}
[@@deriving yojson_of]
(** eks_properties *)

type retry_strategy__evaluate_on_exit = {
  action : string prop;  (** action *)
  on_exit_code : string prop option; [@option]  (** on_exit_code *)
  on_reason : string prop option; [@option]  (** on_reason *)
  on_status_reason : string prop option; [@option]
      (** on_status_reason *)
}
[@@deriving yojson_of]
(** retry_strategy__evaluate_on_exit *)

type retry_strategy = {
  attempts : float prop option; [@option]  (** attempts *)
  evaluate_on_exit : retry_strategy__evaluate_on_exit list;
}
[@@deriving yojson_of]
(** retry_strategy *)

type timeout = {
  attempt_duration_seconds : float prop option; [@option]
      (** attempt_duration_seconds *)
}
[@@deriving yojson_of]
(** timeout *)

type aws_batch_job_definition = {
  container_properties : string prop option; [@option]
      (** container_properties *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  node_properties : string prop option; [@option]
      (** node_properties *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  platform_capabilities : string prop list option; [@option]
      (** platform_capabilities *)
  propagate_tags : bool prop option; [@option]  (** propagate_tags *)
  scheduling_priority : float prop option; [@option]
      (** scheduling_priority *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  eks_properties : eks_properties list;
  retry_strategy : retry_strategy list;
  timeout : timeout list;
}
[@@deriving yojson_of]
(** aws_batch_job_definition *)

let eks_properties__pod_properties__containers__env ~name ~value () :
    eks_properties__pod_properties__containers__env =
  { name; value }

let eks_properties__pod_properties__containers__resources ?limits
    ?requests () :
    eks_properties__pod_properties__containers__resources =
  { limits; requests }

let eks_properties__pod_properties__containers__security_context
    ?privileged ?read_only_root_file_system ?run_as_group
    ?run_as_non_root ?run_as_user () :
    eks_properties__pod_properties__containers__security_context =
  {
    privileged;
    read_only_root_file_system;
    run_as_group;
    run_as_non_root;
    run_as_user;
  }

let eks_properties__pod_properties__containers__volume_mounts
    ?read_only ~mount_path ~name () :
    eks_properties__pod_properties__containers__volume_mounts =
  { mount_path; name; read_only }

let eks_properties__pod_properties__containers ?args ?command
    ?image_pull_policy ?name ~image ~env ~resources ~security_context
    ~volume_mounts () : eks_properties__pod_properties__containers =
  {
    args;
    command;
    image;
    image_pull_policy;
    name;
    env;
    resources;
    security_context;
    volume_mounts;
  }

let eks_properties__pod_properties__metadata ?labels () :
    eks_properties__pod_properties__metadata =
  { labels }

let eks_properties__pod_properties__volumes__empty_dir ?medium
    ~size_limit () :
    eks_properties__pod_properties__volumes__empty_dir =
  { medium; size_limit }

let eks_properties__pod_properties__volumes__host_path ~path () :
    eks_properties__pod_properties__volumes__host_path =
  { path }

let eks_properties__pod_properties__volumes__secret ?optional
    ~secret_name () : eks_properties__pod_properties__volumes__secret
    =
  { optional; secret_name }

let eks_properties__pod_properties__volumes ?name ~empty_dir
    ~host_path ~secret () : eks_properties__pod_properties__volumes =
  { name; empty_dir; host_path; secret }

let eks_properties__pod_properties ?dns_policy ?host_network
    ?service_account_name ~containers ~metadata ~volumes () :
    eks_properties__pod_properties =
  {
    dns_policy;
    host_network;
    service_account_name;
    containers;
    metadata;
    volumes;
  }

let eks_properties ~pod_properties () : eks_properties =
  { pod_properties }

let retry_strategy__evaluate_on_exit ?on_exit_code ?on_reason
    ?on_status_reason ~action () : retry_strategy__evaluate_on_exit =
  { action; on_exit_code; on_reason; on_status_reason }

let retry_strategy ?attempts ~evaluate_on_exit () : retry_strategy =
  { attempts; evaluate_on_exit }

let timeout ?attempt_duration_seconds () : timeout =
  { attempt_duration_seconds }

let aws_batch_job_definition ?container_properties ?id
    ?node_properties ?parameters ?platform_capabilities
    ?propagate_tags ?scheduling_priority ?tags ?tags_all ~name ~type_
    ~eks_properties ~retry_strategy ~timeout () :
    aws_batch_job_definition =
  {
    container_properties;
    id;
    name;
    node_properties;
    parameters;
    platform_capabilities;
    propagate_tags;
    scheduling_priority;
    tags;
    tags_all;
    type_;
    eks_properties;
    retry_strategy;
    timeout;
  }

type t = {
  arn : string prop;
  arn_prefix : string prop;
  container_properties : string prop;
  id : string prop;
  name : string prop;
  node_properties : string prop;
  parameters : (string * string) list prop;
  platform_capabilities : string list prop;
  propagate_tags : bool prop;
  revision : float prop;
  scheduling_priority : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?container_properties ?id ?node_properties
    ?parameters ?platform_capabilities ?propagate_tags
    ?scheduling_priority ?tags ?tags_all ~name ~type_ ~eks_properties
    ~retry_strategy ~timeout __resource_id =
  let __resource_type = "aws_batch_job_definition" in
  let __resource =
    aws_batch_job_definition ?container_properties ?id
      ?node_properties ?parameters ?platform_capabilities
      ?propagate_tags ?scheduling_priority ?tags ?tags_all ~name
      ~type_ ~eks_properties ~retry_strategy ~timeout ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_batch_job_definition __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       arn_prefix =
         Prop.computed __resource_type __resource_id "arn_prefix";
       container_properties =
         Prop.computed __resource_type __resource_id
           "container_properties";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       node_properties =
         Prop.computed __resource_type __resource_id
           "node_properties";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       platform_capabilities =
         Prop.computed __resource_type __resource_id
           "platform_capabilities";
       propagate_tags =
         Prop.computed __resource_type __resource_id "propagate_tags";
       revision =
         Prop.computed __resource_type __resource_id "revision";
       scheduling_priority =
         Prop.computed __resource_type __resource_id
           "scheduling_priority";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
