(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instance_filter__exclusion_labels

val instance_filter__exclusion_labels :
  ?labels:(string * string prop) list ->
  unit ->
  instance_filter__exclusion_labels

type instance_filter__inclusion_labels

val instance_filter__inclusion_labels :
  ?labels:(string * string prop) list ->
  unit ->
  instance_filter__inclusion_labels

type instance_filter__inventories

val instance_filter__inventories :
  ?os_version:string prop ->
  os_short_name:string prop ->
  unit ->
  instance_filter__inventories

type instance_filter

val instance_filter :
  ?all:bool prop ->
  ?exclusion_labels:instance_filter__exclusion_labels list ->
  ?inclusion_labels:instance_filter__inclusion_labels list ->
  ?inventories:instance_filter__inventories list ->
  unit ->
  instance_filter

type os_policies__resource_groups__inventory_filters

val os_policies__resource_groups__inventory_filters :
  ?os_version:string prop ->
  os_short_name:string prop ->
  unit ->
  os_policies__resource_groups__inventory_filters

type os_policies__resource_groups__resources__exec__enforce__file__gcs

val os_policies__resource_groups__resources__exec__enforce__file__gcs :
  ?generation:float prop ->
  bucket:string prop ->
  object_:string prop ->
  unit ->
  os_policies__resource_groups__resources__exec__enforce__file__gcs

type os_policies__resource_groups__resources__exec__enforce__file__remote

val os_policies__resource_groups__resources__exec__enforce__file__remote :
  ?sha256_checksum:string prop ->
  uri:string prop ->
  unit ->
  os_policies__resource_groups__resources__exec__enforce__file__remote

type os_policies__resource_groups__resources__exec__enforce__file

val os_policies__resource_groups__resources__exec__enforce__file :
  ?allow_insecure:bool prop ->
  ?local_path:string prop ->
  ?gcs:
    os_policies__resource_groups__resources__exec__enforce__file__gcs
    list ->
  ?remote:
    os_policies__resource_groups__resources__exec__enforce__file__remote
    list ->
  unit ->
  os_policies__resource_groups__resources__exec__enforce__file

type os_policies__resource_groups__resources__exec__enforce

val os_policies__resource_groups__resources__exec__enforce :
  ?args:string prop list ->
  ?output_file_path:string prop ->
  ?script:string prop ->
  ?file:
    os_policies__resource_groups__resources__exec__enforce__file list ->
  interpreter:string prop ->
  unit ->
  os_policies__resource_groups__resources__exec__enforce

type os_policies__resource_groups__resources__exec__validate__file__gcs

val os_policies__resource_groups__resources__exec__validate__file__gcs :
  ?generation:float prop ->
  bucket:string prop ->
  object_:string prop ->
  unit ->
  os_policies__resource_groups__resources__exec__validate__file__gcs

type os_policies__resource_groups__resources__exec__validate__file__remote

val os_policies__resource_groups__resources__exec__validate__file__remote :
  ?sha256_checksum:string prop ->
  uri:string prop ->
  unit ->
  os_policies__resource_groups__resources__exec__validate__file__remote

type os_policies__resource_groups__resources__exec__validate__file

val os_policies__resource_groups__resources__exec__validate__file :
  ?allow_insecure:bool prop ->
  ?local_path:string prop ->
  ?gcs:
    os_policies__resource_groups__resources__exec__validate__file__gcs
    list ->
  ?remote:
    os_policies__resource_groups__resources__exec__validate__file__remote
    list ->
  unit ->
  os_policies__resource_groups__resources__exec__validate__file

type os_policies__resource_groups__resources__exec__validate

val os_policies__resource_groups__resources__exec__validate :
  ?args:string prop list ->
  ?output_file_path:string prop ->
  ?script:string prop ->
  ?file:
    os_policies__resource_groups__resources__exec__validate__file
    list ->
  interpreter:string prop ->
  unit ->
  os_policies__resource_groups__resources__exec__validate

type os_policies__resource_groups__resources__exec

val os_policies__resource_groups__resources__exec :
  ?enforce:
    os_policies__resource_groups__resources__exec__enforce list ->
  validate:
    os_policies__resource_groups__resources__exec__validate list ->
  unit ->
  os_policies__resource_groups__resources__exec

type os_policies__resource_groups__resources__file__file__gcs

val os_policies__resource_groups__resources__file__file__gcs :
  ?generation:float prop ->
  bucket:string prop ->
  object_:string prop ->
  unit ->
  os_policies__resource_groups__resources__file__file__gcs

type os_policies__resource_groups__resources__file__file__remote

val os_policies__resource_groups__resources__file__file__remote :
  ?sha256_checksum:string prop ->
  uri:string prop ->
  unit ->
  os_policies__resource_groups__resources__file__file__remote

type os_policies__resource_groups__resources__file__file

val os_policies__resource_groups__resources__file__file :
  ?allow_insecure:bool prop ->
  ?local_path:string prop ->
  ?gcs:os_policies__resource_groups__resources__file__file__gcs list ->
  ?remote:
    os_policies__resource_groups__resources__file__file__remote list ->
  unit ->
  os_policies__resource_groups__resources__file__file

type os_policies__resource_groups__resources__file

val os_policies__resource_groups__resources__file :
  ?content:string prop ->
  ?file:os_policies__resource_groups__resources__file__file list ->
  path:string prop ->
  state:string prop ->
  unit ->
  os_policies__resource_groups__resources__file

type os_policies__resource_groups__resources__pkg__apt

val os_policies__resource_groups__resources__pkg__apt :
  name:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg__apt

type os_policies__resource_groups__resources__pkg__deb__source__gcs

val os_policies__resource_groups__resources__pkg__deb__source__gcs :
  ?generation:float prop ->
  bucket:string prop ->
  object_:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg__deb__source__gcs

type os_policies__resource_groups__resources__pkg__deb__source__remote

val os_policies__resource_groups__resources__pkg__deb__source__remote :
  ?sha256_checksum:string prop ->
  uri:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg__deb__source__remote

type os_policies__resource_groups__resources__pkg__deb__source

val os_policies__resource_groups__resources__pkg__deb__source :
  ?allow_insecure:bool prop ->
  ?local_path:string prop ->
  ?gcs:
    os_policies__resource_groups__resources__pkg__deb__source__gcs
    list ->
  ?remote:
    os_policies__resource_groups__resources__pkg__deb__source__remote
    list ->
  unit ->
  os_policies__resource_groups__resources__pkg__deb__source

type os_policies__resource_groups__resources__pkg__deb

val os_policies__resource_groups__resources__pkg__deb :
  ?pull_deps:bool prop ->
  source:
    os_policies__resource_groups__resources__pkg__deb__source list ->
  unit ->
  os_policies__resource_groups__resources__pkg__deb

type os_policies__resource_groups__resources__pkg__googet

val os_policies__resource_groups__resources__pkg__googet :
  name:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg__googet

type os_policies__resource_groups__resources__pkg__msi__source__gcs

val os_policies__resource_groups__resources__pkg__msi__source__gcs :
  ?generation:float prop ->
  bucket:string prop ->
  object_:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg__msi__source__gcs

type os_policies__resource_groups__resources__pkg__msi__source__remote

val os_policies__resource_groups__resources__pkg__msi__source__remote :
  ?sha256_checksum:string prop ->
  uri:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg__msi__source__remote

type os_policies__resource_groups__resources__pkg__msi__source

val os_policies__resource_groups__resources__pkg__msi__source :
  ?allow_insecure:bool prop ->
  ?local_path:string prop ->
  ?gcs:
    os_policies__resource_groups__resources__pkg__msi__source__gcs
    list ->
  ?remote:
    os_policies__resource_groups__resources__pkg__msi__source__remote
    list ->
  unit ->
  os_policies__resource_groups__resources__pkg__msi__source

type os_policies__resource_groups__resources__pkg__msi

val os_policies__resource_groups__resources__pkg__msi :
  ?properties:string prop list ->
  source:
    os_policies__resource_groups__resources__pkg__msi__source list ->
  unit ->
  os_policies__resource_groups__resources__pkg__msi

type os_policies__resource_groups__resources__pkg__rpm__source__gcs

val os_policies__resource_groups__resources__pkg__rpm__source__gcs :
  ?generation:float prop ->
  bucket:string prop ->
  object_:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg__rpm__source__gcs

type os_policies__resource_groups__resources__pkg__rpm__source__remote

val os_policies__resource_groups__resources__pkg__rpm__source__remote :
  ?sha256_checksum:string prop ->
  uri:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg__rpm__source__remote

type os_policies__resource_groups__resources__pkg__rpm__source

val os_policies__resource_groups__resources__pkg__rpm__source :
  ?allow_insecure:bool prop ->
  ?local_path:string prop ->
  ?gcs:
    os_policies__resource_groups__resources__pkg__rpm__source__gcs
    list ->
  ?remote:
    os_policies__resource_groups__resources__pkg__rpm__source__remote
    list ->
  unit ->
  os_policies__resource_groups__resources__pkg__rpm__source

type os_policies__resource_groups__resources__pkg__rpm

val os_policies__resource_groups__resources__pkg__rpm :
  ?pull_deps:bool prop ->
  source:
    os_policies__resource_groups__resources__pkg__rpm__source list ->
  unit ->
  os_policies__resource_groups__resources__pkg__rpm

type os_policies__resource_groups__resources__pkg__yum

val os_policies__resource_groups__resources__pkg__yum :
  name:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg__yum

type os_policies__resource_groups__resources__pkg__zypper

val os_policies__resource_groups__resources__pkg__zypper :
  name:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg__zypper

type os_policies__resource_groups__resources__pkg

val os_policies__resource_groups__resources__pkg :
  ?apt:os_policies__resource_groups__resources__pkg__apt list ->
  ?deb:os_policies__resource_groups__resources__pkg__deb list ->
  ?googet:os_policies__resource_groups__resources__pkg__googet list ->
  ?msi:os_policies__resource_groups__resources__pkg__msi list ->
  ?rpm:os_policies__resource_groups__resources__pkg__rpm list ->
  ?yum:os_policies__resource_groups__resources__pkg__yum list ->
  ?zypper:os_policies__resource_groups__resources__pkg__zypper list ->
  desired_state:string prop ->
  unit ->
  os_policies__resource_groups__resources__pkg

type os_policies__resource_groups__resources__repository__apt

val os_policies__resource_groups__resources__repository__apt :
  ?gpg_key:string prop ->
  archive_type:string prop ->
  components:string prop list ->
  distribution:string prop ->
  uri:string prop ->
  unit ->
  os_policies__resource_groups__resources__repository__apt

type os_policies__resource_groups__resources__repository__goo

val os_policies__resource_groups__resources__repository__goo :
  name:string prop ->
  url:string prop ->
  unit ->
  os_policies__resource_groups__resources__repository__goo

type os_policies__resource_groups__resources__repository__yum

val os_policies__resource_groups__resources__repository__yum :
  ?display_name:string prop ->
  ?gpg_keys:string prop list ->
  base_url:string prop ->
  id:string prop ->
  unit ->
  os_policies__resource_groups__resources__repository__yum

type os_policies__resource_groups__resources__repository__zypper

val os_policies__resource_groups__resources__repository__zypper :
  ?display_name:string prop ->
  ?gpg_keys:string prop list ->
  base_url:string prop ->
  id:string prop ->
  unit ->
  os_policies__resource_groups__resources__repository__zypper

type os_policies__resource_groups__resources__repository

val os_policies__resource_groups__resources__repository :
  ?apt:os_policies__resource_groups__resources__repository__apt list ->
  ?goo:os_policies__resource_groups__resources__repository__goo list ->
  ?yum:os_policies__resource_groups__resources__repository__yum list ->
  ?zypper:
    os_policies__resource_groups__resources__repository__zypper list ->
  unit ->
  os_policies__resource_groups__resources__repository

type os_policies__resource_groups__resources

val os_policies__resource_groups__resources :
  ?exec:os_policies__resource_groups__resources__exec list ->
  ?file:os_policies__resource_groups__resources__file list ->
  ?pkg:os_policies__resource_groups__resources__pkg list ->
  ?repository:
    os_policies__resource_groups__resources__repository list ->
  id:string prop ->
  unit ->
  os_policies__resource_groups__resources

type os_policies__resource_groups

val os_policies__resource_groups :
  ?inventory_filters:
    os_policies__resource_groups__inventory_filters list ->
  resources:os_policies__resource_groups__resources list ->
  unit ->
  os_policies__resource_groups

type os_policies

val os_policies :
  ?allow_no_resource_group_match:bool prop ->
  ?description:string prop ->
  id:string prop ->
  mode:string prop ->
  resource_groups:os_policies__resource_groups list ->
  unit ->
  os_policies

type rollout__disruption_budget

val rollout__disruption_budget :
  ?fixed:float prop ->
  ?percent:float prop ->
  unit ->
  rollout__disruption_budget

type rollout

val rollout :
  min_wait_duration:string prop ->
  disruption_budget:rollout__disruption_budget list ->
  unit ->
  rollout

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_os_config_os_policy_assignment

val google_os_config_os_policy_assignment :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?skip_await_rollout:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  instance_filter:instance_filter list ->
  os_policies:os_policies list ->
  rollout:rollout list ->
  unit ->
  google_os_config_os_policy_assignment

val yojson_of_google_os_config_os_policy_assignment :
  google_os_config_os_policy_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  baseline : bool prop;
  deleted : bool prop;
  description : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  revision_create_time : string prop;
  revision_id : string prop;
  rollout_state : string prop;
  skip_await_rollout : bool prop;
  uid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?skip_await_rollout:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  instance_filter:instance_filter list ->
  os_policies:os_policies list ->
  rollout:rollout list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?skip_await_rollout:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  instance_filter:instance_filter list ->
  os_policies:os_policies list ->
  rollout:rollout list ->
  string ->
  t Tf_core.resource
