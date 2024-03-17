(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_region_commitment__license_resource = {
  amount : string prop option; [@option]
      (** The number of licenses purchased. *)
  cores_per_license : string prop option; [@option]
      (** Specifies the core range of the instance for which this license applies. *)
  license : string prop;  (** Any applicable license URI. *)
}
[@@deriving yojson_of]
(** The license specification required as part of a license commitment. *)

type google_compute_region_commitment__resources = {
  accelerator_type : string prop option; [@option]
      (** Name of the accelerator type resource. Applicable only when the type is ACCELERATOR. *)
  amount : string prop option; [@option]
      (** The amount of the resource purchased (in a type-dependent unit,
such as bytes). For vCPUs, this can just be an integer. For memory,
this must be provided in MB. Memory must be a multiple of 256 MB,
with up to 6.5GB of memory per every vCPU. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type of resource for which this commitment applies.
Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR. *)
}
[@@deriving yojson_of]
(** A list of commitment amounts for particular resources.
Note that VCPU and MEMORY resource commitments must occur together. *)

type google_compute_region_commitment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_region_commitment__timeouts *)

type google_compute_region_commitment = {
  auto_renew : bool prop option; [@option]
      (** Specifies whether to enable automatic renewal for the commitment.
The default value is false if not specified.
If the field is set to true, the commitment will be automatically renewed for either
one or three years according to the terms of the existing commitment. *)
  category : string prop option; [@option]
      (** The category of the commitment. Category MACHINE specifies commitments composed of
machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE
specifies commitments composed of software licenses, listed in licenseResources.
Note that only MACHINE commitments should have a Type specified. Possible values: [LICENSE, MACHINE] *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. The name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  plan : string prop;
      (** The plan for this commitment, which determines duration and discount rate.
The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years). Possible values: [TWELVE_MONTH, THIRTY_SIX_MONTH] *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** URL of the region where this commitment may be used. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of commitment, which affects the discount rate and the eligible resources.
The type could be one of the following value: 'MEMORY_OPTIMIZED', 'ACCELERATOR_OPTIMIZED',
'GENERAL_PURPOSE_N1', 'GENERAL_PURPOSE_N2', 'GENERAL_PURPOSE_N2D', 'GENERAL_PURPOSE_E2',
'GENERAL_PURPOSE_T2D', 'GENERAL_PURPOSE_C3', 'COMPUTE_OPTIMIZED_C2', 'COMPUTE_OPTIMIZED_C2D' and
'GRAPHICS_OPTIMIZED_G2' *)
  license_resource :
    google_compute_region_commitment__license_resource list;
  resources : google_compute_region_commitment__resources list;
  timeouts : google_compute_region_commitment__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_commitment *)

type t = {
  auto_renew : bool prop;
  category : string prop;
  commitment_id : float prop;
  creation_timestamp : string prop;
  description : string prop;
  end_timestamp : string prop;
  id : string prop;
  name : string prop;
  plan : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  start_timestamp : string prop;
  status : string prop;
  status_message : string prop;
  type_ : string prop;
}

let google_compute_region_commitment ?auto_renew ?category
    ?description ?id ?project ?region ?type_ ?timeouts ~name ~plan
    ~license_resource ~resources __resource_id =
  let __resource_type = "google_compute_region_commitment" in
  let __resource =
    ({
       auto_renew;
       category;
       description;
       id;
       name;
       plan;
       project;
       region;
       type_;
       license_resource;
       resources;
       timeouts;
     }
      : google_compute_region_commitment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_commitment __resource);
  let __resource_attributes =
    ({
       auto_renew =
         Prop.computed __resource_type __resource_id "auto_renew";
       category =
         Prop.computed __resource_type __resource_id "category";
       commitment_id =
         Prop.computed __resource_type __resource_id "commitment_id";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       end_timestamp =
         Prop.computed __resource_type __resource_id "end_timestamp";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       plan = Prop.computed __resource_type __resource_id "plan";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       start_timestamp =
         Prop.computed __resource_type __resource_id
           "start_timestamp";
       status = Prop.computed __resource_type __resource_id "status";
       status_message =
         Prop.computed __resource_type __resource_id "status_message";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
