(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_service_account_key = {
  id : string prop option; [@option]  (** id *)
  keepers : (string * string prop) list option; [@option]
      (** Arbitrary map of values that, when changed, will trigger recreation of resource. *)
  key_algorithm : string prop option; [@option]
      (** The algorithm used to generate the key, used only on create. KEY_ALG_RSA_2048 is the default algorithm. Valid values are: KEY_ALG_RSA_1024, KEY_ALG_RSA_2048. *)
  private_key_type : string prop option; [@option]
      (** private_key_type *)
  public_key_data : string prop option; [@option]
      (** A field that allows clients to upload their own public key. If set, use this public key data to create a service account key for given service account. Please note, the expected format for this field is a base64 encoded X509_PEM. *)
  public_key_type : string prop option; [@option]
      (** public_key_type *)
  service_account_id : string prop;
      (** The ID of the parent service account of the key. This can be a string in the format {ACCOUNT} or projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}, where {ACCOUNT} is the email address or unique id of the service account. If the {ACCOUNT} syntax is used, the project will be inferred from the provider's configuration. *)
}
[@@deriving yojson_of]
(** google_service_account_key *)

let google_service_account_key ?id ?keepers ?key_algorithm
    ?private_key_type ?public_key_data ?public_key_type
    ~service_account_id __resource_id =
  let __resource_type = "google_service_account_key" in
  let __resource =
    {
      id;
      keepers;
      key_algorithm;
      private_key_type;
      public_key_data;
      public_key_type;
      service_account_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_service_account_key __resource);
  ()
