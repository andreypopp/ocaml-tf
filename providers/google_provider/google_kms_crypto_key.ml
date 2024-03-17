(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_kms_crypto_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_kms_crypto_key__timeouts *)

type google_kms_crypto_key__version_template = {
  algorithm : string prop;
      (** The algorithm to use when creating a version based on this template.
See the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs. *)
  protection_level : string prop option; [@option]
      (** The protection level to use when creating a version based on this template. Possible values include SOFTWARE, HSM, EXTERNAL, EXTERNAL_VPC. Defaults to SOFTWARE. *)
}
[@@deriving yojson_of]
(** A template describing settings for new crypto key versions. *)

type google_kms_crypto_key__primary = {
  name : string prop;  (** name *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]

type google_kms_crypto_key = {
  destroy_scheduled_duration : string prop option; [@option]
      (** The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
If not specified at creation time, the default duration is 24 hours. *)
  id : string prop option; [@option]  (** id *)
  import_only : bool prop option; [@option]
      (** Whether this key may contain imported versions only. *)
  key_ring : string prop;
      (** The KeyRing that this key belongs to.
Format: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}''. *)
  labels : (string * string prop) list option; [@option]
      (** Labels with user-defined metadata to apply to this resource.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** The resource name for the CryptoKey. *)
  purpose : string prop option; [@option]
      (** The immutable purpose of this CryptoKey. See the
[purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
for possible inputs.
Default value is ENCRYPT_DECRYPT. *)
  rotation_period : string prop option; [@option]
      (** Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
The first rotation will take place after the specified period. The rotation period has
the format of a decimal number with up to 9 fractional digits, followed by the
letter 's' (seconds). It must be greater than a day (ie, 86400). *)
  skip_initial_version_creation : bool prop option; [@option]
      (** If set to true, the request will create a CryptoKey without any CryptoKeyVersions.
You must use the 'google_kms_key_ring_import_job' resource to import the CryptoKeyVersion. *)
  timeouts : google_kms_crypto_key__timeouts option;
  version_template : google_kms_crypto_key__version_template list;
}
[@@deriving yojson_of]
(** google_kms_crypto_key *)

let google_kms_crypto_key ?destroy_scheduled_duration ?id
    ?import_only ?labels ?purpose ?rotation_period
    ?skip_initial_version_creation ?timeouts ~key_ring ~name
    ~version_template __resource_id =
  let __resource_type = "google_kms_crypto_key" in
  let __resource =
    {
      destroy_scheduled_duration;
      id;
      import_only;
      key_ring;
      labels;
      name;
      purpose;
      rotation_period;
      skip_initial_version_creation;
      timeouts;
      version_template;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_crypto_key __resource);
  ()
