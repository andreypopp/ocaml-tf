(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type network_config = {
  peered_network : string prop;
      (** Required. Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options) *)
  peered_network_ip_range : string prop option; [@option]
      (** Optional. Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used. *)
}
[@@deriving yojson_of]
(** Network configuration for the `WorkerPool`. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type worker_config = {
  disk_size_gb : float prop option; [@option]
      (** Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size. *)
  machine_type : string prop option; [@option]
      (** Machine type of a worker, such as `n1-standard-1`. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). If left blank, Cloud Build will use `n1-standard-1`. *)
  no_external_ip : bool prop option; [@option]
      (** If true, workers are created without any public address, which prevents network egress to public IPs. *)
}
[@@deriving yojson_of]
(** Configuration to be used for a creating workers in the `WorkerPool`. *)

type google_cloudbuild_worker_pool = {
  annotations : (string * string prop) list option; [@option]
      (** User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. *)
  display_name : string prop option; [@option]
      (** A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** User-defined name of the `WorkerPool`. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  network_config : network_config list;
  timeouts : timeouts option;
  worker_config : worker_config list;
}
[@@deriving yojson_of]
(** google_cloudbuild_worker_pool *)

let network_config ?peered_network_ip_range ~peered_network () :
    network_config =
  { peered_network; peered_network_ip_range }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let worker_config ?disk_size_gb ?machine_type ?no_external_ip () :
    worker_config =
  { disk_size_gb; machine_type; no_external_ip }

let google_cloudbuild_worker_pool ?annotations ?display_name ?id
    ?project ?timeouts ~location ~name ~network_config ~worker_config
    () : google_cloudbuild_worker_pool =
  {
    annotations;
    display_name;
    id;
    location;
    name;
    project;
    network_config;
    timeouts;
    worker_config;
  }

type t = {
  annotations : (string * string) list prop;
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

let register ?tf_module ?annotations ?display_name ?id ?project
    ?timeouts ~location ~name ~network_config ~worker_config
    __resource_id =
  let __resource_type = "google_cloudbuild_worker_pool" in
  let __resource =
    google_cloudbuild_worker_pool ?annotations ?display_name ?id
      ?project ?timeouts ~location ~name ~network_config
      ~worker_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudbuild_worker_pool __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_time =
         Prop.computed __resource_type __resource_id "delete_time";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
