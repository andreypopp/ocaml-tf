(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_batch_job_definition__eks_properties__pod_properties__containers__env = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__containers__env *)

type aws_batch_job_definition__eks_properties__pod_properties__containers__resources = {
  limits : (string * string prop) list option; [@option]
      (** limits *)
  requests : (string * string prop) list option; [@option]
      (** requests *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__containers__resources *)

type aws_batch_job_definition__eks_properties__pod_properties__containers__security_context = {
  privileged : bool prop option; [@option]  (** privileged *)
  read_only_root_file_system : bool prop option; [@option]
      (** read_only_root_file_system *)
  run_as_group : float prop option; [@option]  (** run_as_group *)
  run_as_non_root : bool prop option; [@option]
      (** run_as_non_root *)
  run_as_user : float prop option; [@option]  (** run_as_user *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__containers__security_context *)

type aws_batch_job_definition__eks_properties__pod_properties__containers__volume_mounts = {
  mount_path : string prop;  (** mount_path *)
  name : string prop;  (** name *)
  read_only : bool prop option; [@option]  (** read_only *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__containers__volume_mounts *)

type aws_batch_job_definition__eks_properties__pod_properties__containers = {
  args : string prop list option; [@option]  (** args *)
  command : string prop list option; [@option]  (** command *)
  image : string prop;  (** image *)
  image_pull_policy : string prop option; [@option]
      (** image_pull_policy *)
  name : string prop option; [@option]  (** name *)
  env :
    aws_batch_job_definition__eks_properties__pod_properties__containers__env
    list;
  resources :
    aws_batch_job_definition__eks_properties__pod_properties__containers__resources
    list;
  security_context :
    aws_batch_job_definition__eks_properties__pod_properties__containers__security_context
    list;
  volume_mounts :
    aws_batch_job_definition__eks_properties__pod_properties__containers__volume_mounts
    list;
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__containers *)

type aws_batch_job_definition__eks_properties__pod_properties__metadata = {
  labels : (string * string prop) list option; [@option]
      (** labels *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__metadata *)

type aws_batch_job_definition__eks_properties__pod_properties__volumes__empty_dir = {
  medium : string prop option; [@option]  (** medium *)
  size_limit : string prop;  (** size_limit *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__volumes__empty_dir *)

type aws_batch_job_definition__eks_properties__pod_properties__volumes__host_path = {
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__volumes__host_path *)

type aws_batch_job_definition__eks_properties__pod_properties__volumes__secret = {
  optional : bool prop option; [@option]  (** optional *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__volumes__secret *)

type aws_batch_job_definition__eks_properties__pod_properties__volumes = {
  name : string prop option; [@option]  (** name *)
  empty_dir :
    aws_batch_job_definition__eks_properties__pod_properties__volumes__empty_dir
    list;
  host_path :
    aws_batch_job_definition__eks_properties__pod_properties__volumes__host_path
    list;
  secret :
    aws_batch_job_definition__eks_properties__pod_properties__volumes__secret
    list;
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__volumes *)

type aws_batch_job_definition__eks_properties__pod_properties = {
  dns_policy : string prop option; [@option]  (** dns_policy *)
  host_network : bool prop option; [@option]  (** host_network *)
  service_account_name : string prop option; [@option]
      (** service_account_name *)
  containers :
    aws_batch_job_definition__eks_properties__pod_properties__containers
    list;
  metadata :
    aws_batch_job_definition__eks_properties__pod_properties__metadata
    list;
  volumes :
    aws_batch_job_definition__eks_properties__pod_properties__volumes
    list;
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties *)

type aws_batch_job_definition__eks_properties = {
  pod_properties :
    aws_batch_job_definition__eks_properties__pod_properties list;
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties *)

type aws_batch_job_definition__retry_strategy__evaluate_on_exit = {
  action : string prop;  (** action *)
  on_exit_code : string prop option; [@option]  (** on_exit_code *)
  on_reason : string prop option; [@option]  (** on_reason *)
  on_status_reason : string prop option; [@option]
      (** on_status_reason *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__retry_strategy__evaluate_on_exit *)

type aws_batch_job_definition__retry_strategy = {
  attempts : float prop option; [@option]  (** attempts *)
  evaluate_on_exit :
    aws_batch_job_definition__retry_strategy__evaluate_on_exit list;
}
[@@deriving yojson_of]
(** aws_batch_job_definition__retry_strategy *)

type aws_batch_job_definition__timeout = {
  attempt_duration_seconds : float prop option; [@option]
      (** attempt_duration_seconds *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__timeout *)

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
  eks_properties : aws_batch_job_definition__eks_properties list;
  retry_strategy : aws_batch_job_definition__retry_strategy list;
  timeout : aws_batch_job_definition__timeout list;
}
[@@deriving yojson_of]
(** aws_batch_job_definition *)

let aws_batch_job_definition ?container_properties ?id
    ?node_properties ?parameters ?platform_capabilities
    ?propagate_tags ?scheduling_priority ?tags ?tags_all ~name ~type_
    ~eks_properties ~retry_strategy ~timeout __resource_id =
  let __resource_type = "aws_batch_job_definition" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_batch_job_definition __resource);
  ()
