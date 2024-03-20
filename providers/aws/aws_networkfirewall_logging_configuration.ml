(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging_configuration__log_destination_config = {
  log_destination : (string * string prop) list;
      (** log_destination *)
  log_destination_type : string prop;  (** log_destination_type *)
  log_type : string prop;  (** log_type *)
}
[@@deriving yojson_of]
(** logging_configuration__log_destination_config *)

type logging_configuration = {
  log_destination_config :
    logging_configuration__log_destination_config list;
}
[@@deriving yojson_of]
(** logging_configuration *)

type aws_networkfirewall_logging_configuration = {
  firewall_arn : string prop;  (** firewall_arn *)
  id : string prop option; [@option]  (** id *)
  logging_configuration : logging_configuration list;
}
[@@deriving yojson_of]
(** aws_networkfirewall_logging_configuration *)

let logging_configuration__log_destination_config ~log_destination
    ~log_destination_type ~log_type () :
    logging_configuration__log_destination_config =
  { log_destination; log_destination_type; log_type }

let logging_configuration ~log_destination_config () :
    logging_configuration =
  { log_destination_config }

let aws_networkfirewall_logging_configuration ?id ~firewall_arn
    ~logging_configuration () :
    aws_networkfirewall_logging_configuration =
  { firewall_arn; id; logging_configuration }

type t = { firewall_arn : string prop; id : string prop }

let make ?id ~firewall_arn ~logging_configuration __id =
  let __type = "aws_networkfirewall_logging_configuration" in
  let __attrs =
    ({
       firewall_arn = Prop.computed __type __id "firewall_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkfirewall_logging_configuration
        (aws_networkfirewall_logging_configuration ?id ~firewall_arn
           ~logging_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~firewall_arn ~logging_configuration __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~firewall_arn ~logging_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
