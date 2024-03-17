(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_kms_crypto_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_kms_crypto_key__timeouts *)

type google_kms_crypto_key__version_template = {
  algorithm : string;
      (** The algorithm to use when creating a version based on this template.
See the [algorithm reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm) for possible inputs. *)
  protection_level : string option; [@option]
      (** The protection level to use when creating a version based on this template. Possible values include SOFTWARE, HSM, EXTERNAL, EXTERNAL_VPC. Defaults to SOFTWARE. *)
}
[@@deriving yojson_of]
(** A template describing settings for new crypto key versions. *)

type google_kms_crypto_key__primary = {
  name : string;  (** name *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type google_kms_crypto_key = {
  key_ring : string;
      (** The KeyRing that this key belongs to.
Format: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}''. *)
  labels : (string * string) list option; [@option]
      (** Labels with user-defined metadata to apply to this resource.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;  (** The resource name for the CryptoKey. *)
  purpose : string option; [@option]
      (** The immutable purpose of this CryptoKey. See the
[purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
for possible inputs.
Default value is ENCRYPT_DECRYPT. *)
  rotation_period : string option; [@option]
      (** Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
The first rotation will take place after the specified period. The rotation period has
the format of a decimal number with up to 9 fractional digits, followed by the
letter 's' (seconds). It must be greater than a day (ie, 86400). *)
  skip_initial_version_creation : bool option; [@option]
      (** If set to true, the request will create a CryptoKey without any CryptoKeyVersions.
You must use the 'google_kms_key_ring_import_job' resource to import the CryptoKeyVersion. *)
  timeouts : google_kms_crypto_key__timeouts option;
  version_template : google_kms_crypto_key__version_template list;
}
[@@deriving yojson_of]
(** google_kms_crypto_key *)

let google_kms_crypto_key ?labels ?purpose ?rotation_period
    ?skip_initial_version_creation ?timeouts ~key_ring ~name
    ~version_template __resource_id =
  let __resource_type = "google_kms_crypto_key" in
  let __resource =
    {
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
