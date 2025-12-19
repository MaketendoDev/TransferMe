package net.maketendo.transferme.screens;

import net.maketendo.transferme.TransferState;
import net.minecraft.client.gui.LogoDrawer;
import net.minecraft.client.gui.screen.Screen;
import net.minecraft.client.gui.screen.TitleScreen;
import net.minecraft.text.Text;
import net.minecraft.util.Formatting;
import net.minecraft.util.Identifier;

public final class TransferCompleteScreen extends WizardOptionsScreen {

    private final TransferState state;

    public TransferCompleteScreen(Screen parent, TransferState state) {
        super(parent, Text.literal("Transfer Completed Successfully"));
        this.state = state;
    }

    @Override
    protected void addOptions() {

        body.addIcon(Identifier.of("minecraft", "textures/gui/sprites/icon/checkmark.png"));
        body.addSpace(1);
        body.addHeader(Text.literal("All of your selected files have transferred successfully, without issues!").formatted(Formatting.BOLD).formatted(Formatting.GREEN));
        body.addSpace(1);

        if (state.transferMods) {
            body.addHeader(Text.literal("You've also transferred data which need the client to restart").formatted(Formatting.GRAY));
            body.addHeader(Text.literal("for it to apply!").formatted(Formatting.GRAY));
        }
    }

    @Override
    protected void onProceed() {
        client.setScreen(new TitleScreen(true, new LogoDrawer(true)));
    }
}


