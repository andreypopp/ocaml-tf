(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_region_commitment__license_resource = {
  amount : string option; [@option]
      (** The number of licenses purchased. *)
  cores_per_license : string option; [@option]
      (** Specifies the core range of the instance for which this license applies. *)
  license : string;  (** Any applicable license URI. *)
}
[@@deriving yojson_of]
(** The license specification required as part of a license commitment. *)

type google_compute_region_commitment__resources = {
  accelerator_type : string option; [@option]
      (** Name of the accelerator type resource. Applicable only when the type is ACCELERATOR. *)
  amount : string option; [@option]
      (** The amount of the resource purchased (in a type-dependent unit,
such as bytes). For vCPUs, this can just be an integer. For memory,
this must be provided in MB. Memory must be a multiple of 256 MB,
with up to 6.5GB of memory per every vCPU. *)
  type_ : string option; [@option] [@key "type"]
      (** Type of resource for which this commitment applies.
Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR. *)
}
[@@deriving yojson_of]
(** A list of commitment amounts for particular resources.
Note that VCPU and MEMORY resource commitments must occur together. *)

type google_compute_region_commitment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_region_commitment__timeouts *)

type google_compute_region_commitment = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  name : string;
      (** Name of the resource. The name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  plan : string;
      (** The plan for this commitment, which determines duration and discount rate.
The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years). Possible values: [TWELVE_MONTH, THIRTY_SIX_MONTH] *)
  license_resource :
    google_compute_region_commitment__license_resource list;
  resources : google_compute_region_commitment__resources list;
  timeouts : google_compute_region_commitment__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_commitment *)

let google_compute_region_commitment ?description ?timeouts ~name
    ~plan ~license_resource ~resources __resource_id =
  let __resource_type = "google_compute_region_commitment" in
  let __resource =
    {
      description;
      name;
      plan;
      license_resource;
      resources;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_commitment __resource);
  ()
