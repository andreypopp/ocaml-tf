(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_dlp_profile__entry__pattern = {
  regex : string prop;  (** The regex that defines the pattern. *)
  validation : string prop option; [@option]
      (** The validation algorithm to apply with this pattern. *)
}
[@@deriving yojson_of]
(** cloudflare_dlp_profile__entry__pattern *)

type cloudflare_dlp_profile__entry = {
  enabled : bool prop option; [@option]
      (** Whether the entry is active. Defaults to `false`. *)
  id : string prop option; [@option]  (** Unique entry identifier. *)
  name : string prop;  (** Name of the entry to deploy. *)
  pattern : cloudflare_dlp_profile__entry__pattern list;
}
[@@deriving yojson_of]
(** List of entries to apply to the profile. *)

type cloudflare_dlp_profile = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  allowed_match_count : float prop;
      (** Related DLP policies will trigger when the match count exceeds the number set. *)
  description : string prop option; [@option]
      (** Brief summary of the profile and its intended use. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the profile. **Modifying this attribute will force creation of a new resource.** *)
  type_ : string prop; [@key "type"]
      (** The type of the profile. Available values: `custom`, `predefined`. **Modifying this attribute will force creation of a new resource.** *)
  entry : cloudflare_dlp_profile__entry list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare DLP Profile resource. Data Loss Prevention profiles
are a set of entries that can be matched in HTTP bodies or files.
They are referenced in Zero Trust Gateway rules.
 *)

let cloudflare_dlp_profile ?description ?id ~account_id
    ~allowed_match_count ~name ~type_ ~entry __resource_id =
  let __resource_type = "cloudflare_dlp_profile" in
  let __resource =
    {
      account_id;
      allowed_match_count;
      description;
      id;
      name;
      type_;
      entry;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_dlp_profile __resource);
  ()
