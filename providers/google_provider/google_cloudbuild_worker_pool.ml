(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloudbuild_worker_pool__network_config = {
  peered_network : string;
      (** Required. Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options) *)
  peered_network_ip_range : string option; [@option]
      (** Optional. Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used. *)
}
[@@deriving yojson_of]
(** Network configuration for the `WorkerPool`. *)

type google_cloudbuild_worker_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloudbuild_worker_pool__timeouts *)

type google_cloudbuild_worker_pool__worker_config = {
  disk_size_gb : float option; [@option]
      (** Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size. *)
  machine_type : string option; [@option]
      (** Machine type of a worker, such as `n1-standard-1`. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). If left blank, Cloud Build will use `n1-standard-1`. *)
  no_external_ip : bool option; [@option]
      (** If true, workers are created without any public address, which prevents network egress to public IPs. *)
}
[@@deriving yojson_of]
(** Configuration to be used for a creating workers in the `WorkerPool`. *)

type google_cloudbuild_worker_pool = {
  annotations : (string * string) list option; [@option]
      (** User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field `effective_annotations` for all of the annotations present on the resource. *)
  display_name : string option; [@option]
      (** A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters. *)
  location : string;  (** The location for the resource *)
  name : string;  (** User-defined name of the `WorkerPool`. *)
  network_config :
    google_cloudbuild_worker_pool__network_config list;
  timeouts : google_cloudbuild_worker_pool__timeouts option;
  worker_config : google_cloudbuild_worker_pool__worker_config list;
}
[@@deriving yojson_of]
(** google_cloudbuild_worker_pool *)

let google_cloudbuild_worker_pool ?annotations ?display_name
    ?timeouts ~location ~name ~network_config ~worker_config
    __resource_id =
  let __resource_type = "google_cloudbuild_worker_pool" in
  let __resource =
    {
      annotations;
      display_name;
      location;
      name;
      network_config;
      timeouts;
      worker_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudbuild_worker_pool __resource);
  ()
