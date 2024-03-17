(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_quicksight_account_subscription__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_quicksight_account_subscription__timeouts *)

type aws_quicksight_account_subscription = {
  account_name : string;  (** account_name *)
  active_directory_name : string option; [@option]
      (** active_directory_name *)
  admin_group : string list option; [@option]  (** admin_group *)
  authentication_method : string;  (** authentication_method *)
  author_group : string list option; [@option]  (** author_group *)
  contact_number : string option; [@option]  (** contact_number *)
  directory_id : string option; [@option]  (** directory_id *)
  edition : string;  (** edition *)
  email_address : string option; [@option]  (** email_address *)
  first_name : string option; [@option]  (** first_name *)
  last_name : string option; [@option]  (** last_name *)
  notification_email : string;  (** notification_email *)
  reader_group : string list option; [@option]  (** reader_group *)
  realm : string option; [@option]  (** realm *)
  timeouts : aws_quicksight_account_subscription__timeouts option;
}
[@@deriving yojson_of]
(** aws_quicksight_account_subscription *)

let aws_quicksight_account_subscription ?active_directory_name
    ?admin_group ?author_group ?contact_number ?directory_id
    ?email_address ?first_name ?last_name ?reader_group ?realm
    ?timeouts ~account_name ~authentication_method ~edition
    ~notification_email __resource_id =
  let __resource_type = "aws_quicksight_account_subscription" in
  let __resource =
    {
      account_name;
      active_directory_name;
      admin_group;
      authentication_method;
      author_group;
      contact_number;
      directory_id;
      edition;
      email_address;
      first_name;
      last_name;
      notification_email;
      reader_group;
      realm;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_account_subscription __resource);
  ()
