package net.maketendo.transferme.mixin;

import net.maketendo.transferme.TransferState;
import net.maketendo.transferme.screens.TransferPathScreen;
import net.maketendo.transferme.screens.WizardOptionsScreen;
import net.minecraft.client.MinecraftClient;
import net.minecraft.client.gui.screen.Screen;
import net.minecraft.client.gui.screen.TitleScreen;
import net.minecraft.client.gui.widget.ButtonWidget;
import net.minecraft.text.Text;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(TitleScreen.class)
public abstract class TitleScreenMixin extends Screen {

    protected TitleScreenMixin(Text title) {
        super(title);
    }

    @Inject(method = "init", at = @At("TAIL"))
    private void addTransferButton(CallbackInfo ci) {
        int buttonWidth = 70;
        int buttonHeight = 20;
        int x = this.width - buttonWidth - 10;
        int y = 10;

        this.addDrawableChild(
                ButtonWidget.builder(
                        Text.literal("Transferify"),
                        btn -> MinecraftClient.getInstance().setScreen(
                                new TransferPathScreen(
                                        this, new TransferState()
                                ))
                ).dimensions(x, y, buttonWidth, buttonHeight).build()
        );

    }

}

