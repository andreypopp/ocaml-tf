(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_batch_job_definition__eks_properties__pod_properties__containers__env = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__containers__env *)

type aws_batch_job_definition__eks_properties__pod_properties__containers__resources = {
  limits : (string * string) list option; [@option]  (** limits *)
  requests : (string * string) list option; [@option]  (** requests *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__containers__resources *)

type aws_batch_job_definition__eks_properties__pod_properties__containers__security_context = {
  privileged : bool option; [@option]  (** privileged *)
  read_only_root_file_system : bool option; [@option]
      (** read_only_root_file_system *)
  run_as_group : float option; [@option]  (** run_as_group *)
  run_as_non_root : bool option; [@option]  (** run_as_non_root *)
  run_as_user : float option; [@option]  (** run_as_user *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__containers__security_context *)

type aws_batch_job_definition__eks_properties__pod_properties__containers__volume_mounts = {
  mount_path : string;  (** mount_path *)
  name : string;  (** name *)
  read_only : bool option; [@option]  (** read_only *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__containers__volume_mounts *)

type aws_batch_job_definition__eks_properties__pod_properties__containers = {
  args : string list option; [@option]  (** args *)
  command : string list option; [@option]  (** command *)
  image : string;  (** image *)
  image_pull_policy : string option; [@option]
      (** image_pull_policy *)
  name : string option; [@option]  (** name *)
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
  labels : (string * string) list option; [@option]  (** labels *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__metadata *)

type aws_batch_job_definition__eks_properties__pod_properties__volumes__empty_dir = {
  medium : string option; [@option]  (** medium *)
  size_limit : string;  (** size_limit *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__volumes__empty_dir *)

type aws_batch_job_definition__eks_properties__pod_properties__volumes__host_path = {
  path : string;  (** path *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__volumes__host_path *)

type aws_batch_job_definition__eks_properties__pod_properties__volumes__secret = {
  optional : bool option; [@option]  (** optional *)
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__eks_properties__pod_properties__volumes__secret *)

type aws_batch_job_definition__eks_properties__pod_properties__volumes = {
  name : string option; [@option]  (** name *)
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
  dns_policy : string option; [@option]  (** dns_policy *)
  host_network : bool option; [@option]  (** host_network *)
  service_account_name : string option; [@option]
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
  action : string;  (** action *)
  on_exit_code : string option; [@option]  (** on_exit_code *)
  on_reason : string option; [@option]  (** on_reason *)
  on_status_reason : string option; [@option]  (** on_status_reason *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__retry_strategy__evaluate_on_exit *)

type aws_batch_job_definition__retry_strategy = {
  attempts : float option; [@option]  (** attempts *)
  evaluate_on_exit :
    aws_batch_job_definition__retry_strategy__evaluate_on_exit list;
}
[@@deriving yojson_of]
(** aws_batch_job_definition__retry_strategy *)

type aws_batch_job_definition__timeout = {
  attempt_duration_seconds : float option; [@option]
      (** attempt_duration_seconds *)
}
[@@deriving yojson_of]
(** aws_batch_job_definition__timeout *)

type aws_batch_job_definition = {
  container_properties : string option; [@option]
      (** container_properties *)
  name : string;  (** name *)
  node_properties : string option; [@option]  (** node_properties *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  platform_capabilities : string list option; [@option]
      (** platform_capabilities *)
  propagate_tags : bool option; [@option]  (** propagate_tags *)
  scheduling_priority : float option; [@option]
      (** scheduling_priority *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  eks_properties : aws_batch_job_definition__eks_properties list;
  retry_strategy : aws_batch_job_definition__retry_strategy list;
  timeout : aws_batch_job_definition__timeout list;
}
[@@deriving yojson_of]
(** aws_batch_job_definition *)

let aws_batch_job_definition ?container_properties ?node_properties
    ?parameters ?platform_capabilities ?propagate_tags
    ?scheduling_priority ?tags ~name ~type_ ~eks_properties
    ~retry_strategy ~timeout __resource_id =
  let __resource_type = "aws_batch_job_definition" in
  let __resource =
    {
      container_properties;
      name;
      node_properties;
      parameters;
      platform_capabilities;
      propagate_tags;
      scheduling_priority;
      tags;
      type_;
      eks_properties;
      retry_strategy;
      timeout;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_batch_job_definition __resource);
  ()
