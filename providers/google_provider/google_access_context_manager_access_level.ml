(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_access_context_manager_access_level__basic__conditions__device_policy__os_constraints = {
  minimum_version : string option; [@option]
      (** The minimum allowed OS version. If not set, any version
of this OS satisfies the constraint.
Format: major.minor.patch such as 10.5.301, 9.2.1. *)
  os_type : string;
      (** The operating system type of the device. Possible values: [OS_UNSPECIFIED, DESKTOP_MAC, DESKTOP_WINDOWS, DESKTOP_LINUX, DESKTOP_CHROME_OS, ANDROID, IOS] *)
  require_verified_chrome_os : bool option; [@option]
      (** If you specify DESKTOP_CHROME_OS for osType, you can optionally include requireVerifiedChromeOs to require Chrome Verified Access. *)
}
[@@deriving yojson_of]
(** A list of allowed OS versions.
An empty list allows all types and all versions. *)

type google_access_context_manager_access_level__basic__conditions__device_policy = {
  allowed_device_management_levels : string list option; [@option]
      (** A list of allowed device management levels.
An empty list allows all management levels. Possible values: [MANAGEMENT_UNSPECIFIED, NONE, BASIC, COMPLETE] *)
  allowed_encryption_statuses : string list option; [@option]
      (** A list of allowed encryptions statuses.
An empty list allows all statuses. Possible values: [ENCRYPTION_UNSPECIFIED, ENCRYPTION_UNSUPPORTED, UNENCRYPTED, ENCRYPTED] *)
  require_admin_approval : bool option; [@option]
      (** Whether the device needs to be approved by the customer admin. *)
  require_corp_owned : bool option; [@option]
      (** Whether the device needs to be corp owned. *)
  require_screen_lock : bool option; [@option]
      (** Whether or not screenlock is required for the DevicePolicy
to be true. Defaults to false. *)
  os_constraints :
    google_access_context_manager_access_level__basic__conditions__device_policy__os_constraints
    list;
}
[@@deriving yojson_of]
(** Device specific restrictions, all restrictions must hold for
the Condition to be true. If not specified, all devices are
allowed. *)

type google_access_context_manager_access_level__basic__conditions__vpc_network_sources__vpc_subnetwork = {
  network : string;
      (** Required. Network name to be allowed by this Access Level. Networks of foreign organizations requires 'compute.network.get' permission to be granted to caller. *)
  vpc_ip_subnetworks : string list option; [@option]
      (** CIDR block IP subnetwork specification. Must be IPv4. *)
}
[@@deriving yojson_of]
(** Sub networks within a VPC network. *)

type google_access_context_manager_access_level__basic__conditions__vpc_network_sources = {
  vpc_subnetwork :
    google_access_context_manager_access_level__basic__conditions__vpc_network_sources__vpc_subnetwork
    list;
}
[@@deriving yojson_of]
(** The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify this field together with 'ip_subnetworks'. *)

type google_access_context_manager_access_level__basic__conditions = {
  ip_subnetworks : string list option; [@option]
      (** A list of CIDR block IP subnetwork specification. May be IPv4
or IPv6.
Note that for a CIDR IP address block, the specified IP address
portion must be properly truncated (i.e. all the host bits must
be zero) or the input is considered malformed. For example,
192.0.2.0/24 is accepted but 192.0.2.1/24 is not. Similarly,
for IPv6, 2001:db8::/32 is accepted whereas 2001:db8::1/32
is not. The originating IP of a request must be in one of the
listed subnets in order for this Condition to be true.
If empty, all IP addresses are allowed. *)
  members : string list option; [@option]
      (** An allowed list of members (users, service accounts).
Using groups is not supported yet.

The signed-in user originating the request must be a part of one
of the provided members. If not specified, a request may come
from any user (logged in/not logged in, not present in any
groups, etc.).
Formats: 'user:{emailid}', 'serviceAccount:{emailid}' *)
  negate : bool option; [@option]
      (** Whether to negate the Condition. If true, the Condition becomes
a NAND over its non-empty fields, each field must be false for
the Condition overall to be satisfied. Defaults to false. *)
  regions : string list option; [@option]
      (** The request must originate from one of the provided
countries/regions.
Format: A valid ISO 3166-1 alpha-2 code. *)
  required_access_levels : string list option; [@option]
      (** A list of other access levels defined in the same Policy,
referenced by resource name. Referencing an AccessLevel which
does not exist is an error. All access levels listed must be
granted for the Condition to be true.
Format: accessPolicies/{policy_id}/accessLevels/{short_name} *)
  device_policy :
    google_access_context_manager_access_level__basic__conditions__device_policy
    list;
  vpc_network_sources :
    google_access_context_manager_access_level__basic__conditions__vpc_network_sources
    list;
}
[@@deriving yojson_of]
(** A set of requirements for the AccessLevel to be granted. *)

type google_access_context_manager_access_level__basic = {
  combining_function : string option; [@option]
      (** How the conditions list should be combined to determine if a request
is granted this AccessLevel. If AND is used, each Condition in
conditions must be satisfied for the AccessLevel to be applied. If
OR is used, at least one Condition in conditions must be satisfied
for the AccessLevel to be applied. Default value: AND Possible values: [AND, OR] *)
  conditions :
    google_access_context_manager_access_level__basic__conditions
    list;
}
[@@deriving yojson_of]
(** A set of predefined conditions for the access level and a combining function. *)

type google_access_context_manager_access_level__custom__expr = {
  description : string option; [@option]
      (** Description of the expression *)
  expression : string;
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string option; [@option]
      (** String indicating the location of the expression for error reporting, e.g. a file name and a position in the file *)
  title : string option; [@option]
      (** Title for the expression, i.e. a short string describing its purpose. *)
}
[@@deriving yojson_of]
(** Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
This page details the objects and attributes that are used to the build the CEL expressions for
custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec. *)

type google_access_context_manager_access_level__custom = {
  expr :
    google_access_context_manager_access_level__custom__expr list;
}
[@@deriving yojson_of]
(** Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request.
See CEL spec at: https://github.com/google/cel-spec. *)

type google_access_context_manager_access_level__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_access_context_manager_access_level__timeouts *)

type google_access_context_manager_access_level = {
  description : string option; [@option]
      (** Description of the AccessLevel and its use. Does not affect behavior. *)
  name : string;
      (** Resource name for the Access Level. The short_name component must begin
with a letter and only include alphanumeric and '_'.
Format: accessPolicies/{policy_id}/accessLevels/{short_name} *)
  parent : string;
      (** The AccessPolicy this AccessLevel lives in.
Format: accessPolicies/{policy_id} *)
  title : string;
      (** Human readable title. Must be unique within the Policy. *)
  basic : google_access_context_manager_access_level__basic list;
  custom : google_access_context_manager_access_level__custom list;
  timeouts :
    google_access_context_manager_access_level__timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_access_level *)

let google_access_context_manager_access_level ?description ?timeouts
    ~name ~parent ~title ~basic ~custom __resource_id =
  let __resource_type =
    "google_access_context_manager_access_level"
  in
  let __resource =
    { description; name; parent; title; basic; custom; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_access_level __resource);
  ()
